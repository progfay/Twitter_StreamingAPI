String searchString = "#P演習";

void setup() {
  FilterListener listener = new FilterListener();
  
  Configuration configuration = new ConfigurationBuilder()
    .setOAuthConsumerKey(CONSUMER_KEY)
    .setOAuthConsumerSecret(CONSUMER_SECRET)
    .setOAuthAccessToken(ACCESS_TOKEN)
    .setOAuthAccessTokenSecret(ACCESS_SECRET)
    .build();
    
  TwitterStream twitterStream = new TwitterStreamFactory(configuration).getInstance();
  twitterStream.addListener(listener);
  
  FilterQuery filter = new FilterQuery();
  filter.track(searchString);
  twitterStream.filter(filter);
}