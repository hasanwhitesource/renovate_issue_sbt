module.exports = {
  autodiscover: false,
  logFileLevel: 'warn',
  logFile: '/home/ubuntu/renovate.log',
  onboarding: true,
  onboardingConfig: {
    extends: ['config:base']
  },
  packageRules: [
    {
      matchDatasources: ['sbt-package'],
      registryUrls: [
              'https://repo.maven.apache.org/maven2'
      ]
    },
    {
      matchDatasources: ['sbt-plugin'],
      registryUrls: [
              'https://repo.maven.apache.org/maven2'
      ]
    }
  ]
};
