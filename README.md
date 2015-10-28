# twitter-stream
Twitter-Kafka Data Pipeline

#Requirements :
Twitter Developer account ( for API Key, Secret etc.)
Apache Zookeeper ( required for Kafka)
Oracle JDK 1.7 (64 bit )
Apache Kafka 0.8

#Build Environment :
Apache Maven 2/3
Eclipse


Refered documentation : 

http://saurzcode.in/2015/02/kafka-producer-using-twitter-stream/

JSON editor 
http://www.jsoneditoronline.org/



public class TwitterKafkaProducer {

	private static final String topic = "twitter-topic";   #Topic is mentioned here

	public static void run(String consumerKey, String consumerSecret,
			String token, String secret) throws InterruptedException {

		Properties properties = new Properties();
		properties.put("metadata.broker.list", "wn4.kara:6667"); #Localtion of broker
		properties.put("serializer.class", "kafka.serializer.StringEncoder");
		properties.put("client.id","camus");
		ProducerConfig producerConfig = new ProducerConfig(properties);
		kafka.javaapi.producer.Producer<String, String> producer = new kafka.javaapi.producer.Producer<String, String>(
				producerConfig);

		BlockingQueue<String> queue = new LinkedBlockingQueue<String>(10000);
		StatusesFilterEndpoint endpoint = new StatusesFilterEndpoint();
		// add some track terms
		endpoint.trackTerms(Lists.newArrayList("twitterapi",
				"#hadoop"));

