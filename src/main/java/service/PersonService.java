package service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.Person;

@Service
public class PersonService {

	// An EntityManager will be automatically injected from EntityManagerFactory
	// setup on
	// spring-context.xml
	@PersistenceContext
	private EntityManager em;

	// Since we've setup <tx:annotation-config> and transaction manager on
	// spring-context.xml,
	// any bean method annotated with @Transactional will cause Spring to
	// magically call
	// begin() and commit() at the start/end of the method. If exception occurs
	// it will also
	// call rollback()
	@Transactional
	public List<Person> getAll() {
		List<Person> result = em.createQuery("SELECT p FROM Person p",
				Person.class).getResultList();
		return result;
	}

	@Transactional
	public void add(Person p) {
		em.persist(p);
	}

	@Transactional
	public void postcodeRate() {
		List<Integer> postcodeList = em.createNativeQuery(
				"SELECT postcode from post_crime_rate").getResultList();

		try {
			for (int postcode : postcodeList) {
				
				updatePopulation(postcode);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println(postcodeList.size());
		System.out.println(postcodeList.get(0));
	}
	
	@Transactional
	public void updatePopulation(int postcode) {

		try {
				System.out.println("update start:"+postcode);
				int population = getPopulation(postcode);
				
				em.createNativeQuery("update post_crime_rate set population = ? where postcode = ?")
				.setParameter(1, population).setParameter(2, postcode).executeUpdate();
				
				System.out.println("update finish:"+postcode);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private final String USER_AGENT = "Mozilla/5.0";

	private int getPopulation(int postcode) throws Exception {

		String url = "http://www.censusdata.abs.gov.au/census_services/getproduct/census/2011/quickstat/POA"
				+ postcode + "?opendocument&navpos=220";

		URL obj = new URL(url);
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();

		// optional default is GET
		con.setRequestMethod("GET");

		// add request header
		con.setRequestProperty("User-Agent", USER_AGENT);

		int responseCode = con.getResponseCode();
//		System.out.println("\nSending 'GET' request to URL : " + url);
//		System.out.println("Response Code : " + responseCode);

		BufferedReader in = new BufferedReader(new InputStreamReader(
				con.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();

		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();

		// print result

		int index = response.toString().indexOf("summaryData");
		String str = response.toString().substring(index, index + 50);
		System.out.println(str.split(">")[1].split("<")[0]);
		str = str.split(">")[1].split("<")[0].replace(",", "");
		return Integer.parseInt(str);
	}

}