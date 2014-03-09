window.ENV.development = true

window.ENV.FIXTURES = {
  location: [
    {
      id: 'cluj',
      city: 'Cluj-Napoca',
      country: 'România',
      continent: 'EU',
      venues: ['ragaz']
    },
    {
      id: 'bucharest',
      city: 'București',
      country: 'România',
      continent: 'EU'
    }
  ],
  venue: [
    {
      id: 'ragaz',
      title: 'Răgaz',
      description: 'http://ragaz.ro',
      address: '22-24, Decebal st.',
      opensAt: 9,
      closesAt: 23,
      specialWeekendHours: false,
      hasFood: false,
      smokingAllowed: false,
      wifiNetworks: 1,
      wifiPassword: 'ragaz123',
      loudMusic: false,
      comfyChairs: true,
      hasDesks: false,
      hasToilet: true,
      bikeParking: true,
      carParking: false,
      hostsEvents: true,
      bigWindows: true
    }
  ]
}
