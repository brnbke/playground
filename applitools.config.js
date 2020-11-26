module.exports = {
  consurrency: 10,
  apiKey: process.env.APPLITOOLS_API_KEY,
    batchId: process.env.APPLITOOLS_BATCH_ID,
    batchName: '@oceanblue/profile-avatar',
    showLogs: true,
    browser: [
      {width: 800, height: 600, name: 'firefox'},
    ],
}
