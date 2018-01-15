class FilterListener implements StatusListener {
  @Override
    public void onStatus(Status status) {
    println(status.getUser().getName() + " @" + status.getUser().getScreenName());
    println(status.getText() + "/n");
  }

  @Override
    public void onDeletionNotice(StatusDeletionNotice statusDeletionNotice) {
    System.out.println("Got a status deletion notice id:" + statusDeletionNotice.getStatusId());
  }

  @Override
    public void onTrackLimitationNotice(int numberOfLimitedStatuses) {
    System.out.println("Got track limitation notice:" + numberOfLimitedStatuses);
  }

  @Override
    public void onScrubGeo(long userId, long upToStatusId) {
    System.out.println("Got scrub_geo event userId:" + userId + " upToStatusId:" + upToStatusId);
  }

  @Override
    public void onStallWarning(StallWarning warning) {
    System.out.println("Got stall warning:" + warning);
  }

  @Override
    public void onException(Exception ex) {
    ex.printStackTrace();
  }
}