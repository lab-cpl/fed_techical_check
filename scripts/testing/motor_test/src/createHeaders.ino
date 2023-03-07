void createHeaders(){
  // if logfile is empty write headers
  if (logfile.size() == 0){
    logfile.println("time,motorTime,animal,pellets,motorTurns,battery,delay,protocol");
  }
  logfile.flush();
}
