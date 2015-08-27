package service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
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

	/**
	 * testing method
	 */
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

	/**
	 * testing method
	 * @param postcode
	 */
	@Transactional
	public void updatePopulation(int postcode) {

		try {
			System.out.println("update start:" + postcode);
			List<String> suburbs = getSuburbs(postcode);
			for(String suburb:suburbs){
				em.createNativeQuery(
						"insert into post_suburbs (postcode,name) values (?,?)")
						.setParameter(1, postcode).setParameter(2, suburb)
						.executeUpdate();
			}

			System.out.println("update finish:" + postcode);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private final String USER_AGENT = "Mozilla/5.0";

	/**
	 * testing method
	 * @param postcode
	 * @return
	 * @throws Exception
	 */
	private List<String> getSuburbs(int postcode) throws Exception {

		String url = "http://postcodez.com.au/postcodes.cgi?search_suburb="
				+ postcode + "&search_state=vic&x=62&y=1&type=search";

		URL obj = new URL(url);
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();

		// optional default is GET
		con.setRequestMethod("GET");

		// add request header
		con.setRequestProperty("User-Agent", USER_AGENT);

		int responseCode = con.getResponseCode();
		// System.out.println("\nSending 'GET' request to URL : " + url);
		// System.out.println("Response Code : " + responseCode);

		BufferedReader in = new BufferedReader(new InputStreamReader(
				con.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();

		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();

		// print result
		System.out.println(response.toString());

		int index = response.toString().indexOf("Location:</label>");
		String restStr = response.toString().substring(index);
		List<String> list = new ArrayList<String>();
		while(index>=0){
			int index2 = restStr.indexOf("</a>");
			String arr[] = restStr.substring(0, index2).split(">");
			String suburb = arr[arr.length-1];
			System.out.println("=====suburb:"+suburb);
			list.add(suburb);
			restStr = restStr.substring(index2);
			index = restStr.indexOf("Location:</label>");
			if(index==-1){
				break;
			}
			restStr = restStr.substring(index);
		}
		
		return list;
	}
	
	/**
	 * testing method
	 * @param postcode
	 * @return
	 * @throws Exception
	 */
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
		// System.out.println("\nSending 'GET' request to URL : " + url);
		// System.out.println("Response Code : " + responseCode);

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