# Sun

AstronomicalObjectDesignation.create!(
  designation: 'star',
  description_en: 'A star is an astronomical object comprising a luminous spheroid of plasma held together by its gravity.',
  description_ru: 'Звезда массивное самосветящееся небесное тело, состоящее из газа и плазмы, в котором происходят, происходили или будут происходить термоядерные реакции.'
)

AstronomicalObjectCharacteristic.create!(
  diameter: 1392000,
  volume: 1412000000000000000,
  mass: 1989100000000000000000000000000,
  density: 1.409,
  gravity: 274,
  has_rings: false,
  status: AstronomicalObjectDesignation.find_by(designation: 'star').id
)

AstronomicalObject.create!(
  slug: 'sun',
  name_en: 'The Sun',
  name_ru: 'Солнце',
  description_en: 'The Sun is the star at the center of the Solar System. It is a nearly perfect ball of hot plasma, heated to incandescence by nuclear fusion reactions in its core. The Sun radiates this energy mainly as light, ultraviolet, and infrared radiation, and is the most important source of energy for life on Earth.',
  description_ru: 'Солнце одна из звёзд нашей Галактики и единственная звезда Солнечной системы. Вокруг Солнца обращаются другие объекты этой системы: планеты и их спутники, карликовые планеты и их спутники, астероиды, метеороиды, кометы и космическая пыль.',
  characteristic: AstronomicalObjectCharacteristic.find_by(
    diameter: 1392000,
    volume: 1412000000000000000,
    mass: 1989100000000000000000000000000,
    density: 1.409,
    gravity: 274,
    has_rings: false,
    status: AstronomicalObjectDesignation.find_by(designation: 'star')
  )
)

# Mercury

AstronomicalObjectDesignation.create!(
  designation: 'planet',
  description_en: 'A planet is a large, rounded astronomical body that is neither a star nor its remnant.',
  description_ru: 'Планета небесное тело, вращающееся по орбите вокруг звезды или её остатков, достаточно массивное, чтобы стать округлым под действием собственной гравитации, но недостаточно массивное для начала термоядерной реакции, и сумевшее очистить окрестности своей орбиты от планетезималей.'
)

AstronomicalObjectCharacteristic.create!(
  diameter: 4879.4,
  volume: 60830000000,
  mass: 330200000000000000000000,
  density: 5.43,
  gravity: 3.7,
  has_rings: false,
  status: AstronomicalObjectDesignation.find_by(designation: 'planet').id
)

AstronomicalObject.create!(
  slug: 'mercury',
  name_en: 'The Mercury',
  name_ru: 'Меркурий',
  description_en: 'Mercury is the smallest planet in the Solar System and the closest to the Sun. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the Sun\'s planets. It is named after the Roman god Mercurius (Mercury), god of commerce, messenger of the gods, and mediator between gods and mortals, corresponding to the Greek god Hermes.',
  description_ru: 'Меркурий — наименьшая планета Солнечной системы и самая близкая к Солнцу. Названа в честь древнеримского бога торговли — быстрого Меркурия, поскольку она движется по небу быстрее других планет.',
  characteristic: AstronomicalObjectCharacteristic.find_by(
    diameter: 4879.4,
    volume: 60830000000,
    mass: 330200000000000000000000,
    density: 5.43,
    gravity: 3.7,
    has_rings: false,
    status: AstronomicalObjectDesignation.find_by(designation: 'planet')
  ),
  ancestry: AstronomicalObject.find_by(name_en: "The Sun").id
)

# Venus

AstronomicalObjectCharacteristic.create!(
  diameter: 12103.6,
  volume: 928430000000,
  mass: 4868600000000000000000000,
  density: 5.24,
  gravity: 8.872,
  has_rings: false,
  status: AstronomicalObjectDesignation.find_by(designation: 'planet').id
)

AstronomicalObject.create!(
  slug: 'venus',
  name_en: 'The Venus',
  name_ru: 'Венера',
  description_en: 'Venus is the second planet from the Sun. It is sometimes called Earth\'s "sister" or "twin" planet as it is almost as large and has a similar composition.',
  description_ru: 'Венера — вторая по удалённости от Солнца и шестая по размеру планета Солнечной системы, наряду с Меркурием, Землёй и Марсом принадлежащая к семейству планет земной группы. Названа в честь древнеримской богини любви Венеры.',
  characteristic: AstronomicalObjectCharacteristic.find_by(
    diameter: 12103.6,
    volume: 928430000000,
    mass: 4868600000000000000000000,
    density: 5.24,
    gravity: 8.872,
    has_rings: false,
    status: AstronomicalObjectDesignation.find_by(designation: 'planet').id
  ),
  ancestry: AstronomicalObject.find_by(name_en: "The Sun").id
)

# Historic events

HistoricEvent.create!(
  name_en: 'First telescopic observation of Mercury',
  name_ru: 'Первое телескопическое наблюдение Меркурия',
  description_en: 'The first telescopic observation of Mercury was made by Galileo Galilei at the beginning of the 17th century. Although he observed the phases of Venus, his telescope was not powerful enough to observe the phases of Mercury. On November 7, 1631, Pierre Gassendi made the first telescopic observation of the passage of a planet across the solar disk. The moment of passage was calculated before by Johannes Kepler. In 1639, Giovanni Zupi discovered with a telescope that the orbital phases of Mercury are similar to those of the Moon and Venus. Observations have definitively demonstrated that Mercury revolves around the Sun.',
  description_ru: 'Первое телескопическое наблюдение Меркурия было сделано Галилео Галилеем в начале XVII века. Хотя он наблюдал фазы Венеры, его телескоп не был достаточно мощным, чтобы наблюдать фазы Меркурия. 7 ноября 1631 года Пьер Гассенди сделал первое телескопическое наблюдение прохождения планеты по диску Солнца. Момент прохождения был вычислен до этого Иоганном Кеплером. В 1639 году Джованни Дзупи с помощью телескопа открыл, что орбитальные фазы Меркурия подобны фазам Луны и Венеры. Наблюдения окончательно продемонстрировали, что Меркурий обращается вокруг Солнца.',
  astronomical_object_id: AstronomicalObject.find_by(name_en: "The Mercury").id,
  date_start: '07.11.1631'
)
