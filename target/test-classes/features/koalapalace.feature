@koalapalace
  Feature: Koala Palace

    Background: :TC09_ Koala Palace Admin Giris
      Given kullanici koalapalace admin sayfasina gider
      And kullanici kullaniciadi ve sifresini girer
      Then kullanici giris islemini gerceklestirir

    @hotelcreate
    Scenario: TC09_kullanici bilgileri girerek hotel olusturur
      Given kullanici hotelcreate sayfasina gider
      And kullanici hotelcreate code bolumune "1234" girer
      And kullanici hotelcreate name bolumune "test" girer
      And kullanici hotelcreate adress bolumune "strasse" girer
      And kullanici hotelcreate phone bolumune "0779123456" girer
      And kullanici hotelcreate email bolumune "umut@tech.com" girer
      And kullanici hotelcreate idgroup bolumunde "Hotel Type1" secer
      And kullanici hotelcreate save butonuna tiklar
      Then kullanici hotelcreate kayit islemini assert eder

    @hotelroomcreate
    Scenario: TC10_kullanici bilgleri girerek hotel room olusturur
      Given kullanici hotelroomcreate sayfasina gider
      And kullanici hotelroomcreate idhotel bolumunde "Star" secer
      And kullanici hotelroomcreate code bolumune "12345" girer
      And kullanici hotelroomcreate name bolumune "Techproed" girer
      And kullanici hotelroomcreate location bolumune "USA" girer
      And kullanici hotelroomcreate description bolumune "ne yazik ki aciklama yok" girer
      And kullanici hotelroomcreate price bolumune fiyat girer
      And kullanici hotelroomcreate roomtype bolumunde "Single" secer
      And kullanici hotelroomcreate maxadult bolumune "2" girer
      And kullanici hotelroomcreate maxchildren bolumune "3" girer
      And kullanici hotelroomcreate save butonuna tiklar
      Then kullanici hotelroomcreate kayit islemini assert eder

    @hotelreservationcreate
    Scenario: TC11_kullanici bilgileri girerek room reservation olusturur
      Given kullanici hotelroomreservation sayfasina gider
      And kullanici roomreservation iduser bolumunde "manager2" secer
      And kullanici roomreservation idhotelroom bolumunde "Hilton" secer
      And kullanici roomreservation price bolumune "500" girer
      And kullanici roomreservation datestart bolumune "10/10/2020" girer
      And kullanici roomreservation dateend bolumune "10/17/2020" girer
      And kullanici roomreservation adultamaount bolumune "2" girer
      And kullanici roomreservation childrenamount bolumune "3" girer
      And kullanici roomreservation namesurname bolumune "Umut Tech" girer
      And kullanici roomreservation phone bolumune "0780011009" girer
      And kullanici roomreservation email bolumune "umut@gmail.com" girer
      And kullanici roomreservation notes bolumune "Testerlardan selam.." girer
      And kullanici roomreservation save butonuna tiklar
      Then kullanici roomreservation kayit islemini assert eder

    @hotelreservationcreate
    @hotelreservationnegativetest1
    Scenario: TC12_kullanici iduser secmeden room reservation olusturur
      Given kullanici hotelroomreservation sayfasina gider
  #Bu adımı sildim : And kullanici roomreservation iduser bolumunde "manager2" secer
      And kullanici roomreservation idhotelroom bolumunde "Hilton" secer
      And kullanici roomreservation price bolumune "500" girer
      And kullanici roomreservation datestart bolumune "10/10/2020" girer
      And kullanici roomreservation dateend bolumune "10/17/2020" girer
      And kullanici roomreservation adultamaount bolumune "2" girer
      And kullanici roomreservation childrenamount bolumune "3" girer
      And kullanici roomreservation namesurname bolumune "Hamza Yılmaz" girer
      And kullanici roomreservation phone bolumune "0500600700" girer
      And kullanici roomreservation email bolumune "hamza@gmail.com" girer
      And kullanici roomreservation notes bolumune "Testerlardan selam.." girer
      And kullanici roomreservation save butonuna tiklar
      Then kullanici roomreservation kayit isleminin basarisiz oldugunu assert eder