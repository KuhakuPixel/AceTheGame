function getLatestReleaseJson(releaseJson){

  // latest release is the first element 
  return releaseJson[0]
}

function getLatestApkDownloadLink(releaseJson){
  const apkReleaseName = "app-release.apk"

  latest_releases_json = getLatestReleaseJson(releaseJson)
  for(var i = 0;i< latest_releases_json["assets"].length;i++){
    // find the apk
    if (latest_releases_json["assets"][i]["name"] === apkReleaseName){
      return latest_releases_json["assets"][i]["browser_download_url"]
    }
  }
  return ""

}
