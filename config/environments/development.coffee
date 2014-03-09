window.ENV.development = true

window.ENV.FIXTURES = {
  city: [
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
  location: [
    {
      id: 'cluj',
      venues: ['ragaz', 'corso']
    },
    {
      id: 'bucharest'
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
    },
    {
      id: 'corso',
      title: 'Corso',
      description: 'http://cafecorso.ro/',
      address: '15th Unirii Square',
      opensAt: 8,
      closesAt: 1,
      specialWeekendHours: true,
      hasFood: true,
      smokingAllowed: true,
      wifiNetworks: 1,
      wifiPassword: false,
      loudMusic: false,
      comfyChairs: true,
      hasDesks: true,
      hasToilet: true,
      bikeParking: true,
      carParking: true,
      hostsEvents: false,
      bigWindows: true
    }
  ]
}
