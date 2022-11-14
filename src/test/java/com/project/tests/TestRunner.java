package com.project.tests;


//extends AbstractTestNGCucumberTests

import com.google.common.io.Files;
import com.saf.framework.CommonLib;
import com.saf.framework.MyTestNGBaseClass;
import io.cucumber.core.api.Scenario;
import io.cucumber.java.After;
import io.cucumber.java.AfterStep;
import io.cucumber.testng.*;


import io.qameta.allure.Allure;
import io.qameta.allure.Attachment;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.testng.ITestResult;
import org.testng.annotations.*;

import org.apiguardian.api.API;
import org.apiguardian.api.API.Status;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;


@CucumberOptions(
        features = "src/test/features",
        //features = "src/test/features/kredilerFeatures",
        //tags = {"@"},
        tags = {"@BireyselKrediBasvuru, @VergiOdeme, @DekontGozlemErkenKapama, @DekontGozlemErkenOdenmis, @DekontGozlemGecikmeliOdenmis, @DekontGozlemKısmiOdenmis, @DekontGozlemTarihindeOdenmis, @TahsilatGözlem, @DosyaTransferHareketleri, @MalzemeGrubuTanımlama, @MevuctMalzemeGrubuSilme, @MalzemeTuruTanımlama, @MevcutMalzemeTuruSilme, @YeniTedarikciTanımlama, @MevcutTedarikciSilme, @YeniTarafTanımlama, @MevcutTarafSilme, @YeniMasrafGirisiYetkilendirme, @MevcutMasrafGirisYetkilendirmeSilme, @KrediKullandirimGozlem, @ReeskontGozlem, @TahakkukGozlem, @IstisnaOlusturmaVeKaldirma, @Litigation, @FTPSunucuTanimlama, @account, @bankbranch, @GKTOdemePlaniGozlem, @KurumsalOdemePlaniGozlem, @BirMilyonTlUstuTutarliKredi, @DörtYüzElliBin-BirMilyonTLAraTutarliKredi, @GKTIBasvuru, @GKTIBasvuruDegerlendirme, @DortYuzElliBinTLAltiTutarliKredi, @GKTEsitTaksitOdemePlaniSimulasyonu, @KurumsalEsitTaksitOdemePlaniSimulasyonu, @GKTEsnekOdemePlaniSimulasyonu, @KurumsalEsnekOdemePlaniSimulasyonu, @OnBasvuruGozlem, @BireyselMusteriOnBasvuruRed, @MevcutGKTonbasvuru, @MevcutKurumsalonbasvuru, @Talimatvermeveiptal, @workflow, @workflowpending, @customer, @customerrelation, @teminat, @TeminatEkleVeSilme, @TahsisdenIadeBasvuruVeIptal, @BasvuruIptal, @FiyatlamaEsit, @FiyatlamaEsnek, @FiyatlamaGozlem, @GKTIMevcutBasvuru, @GozlemVeRapor, @KefilEklemeSilme, @MevcutEsitFiyatlama, @MevcutEsnekFiyatlama, @bank, @GiderOdeme, @SatınAlmaTalep, @Treasury, @KomisyonOdeme"},
        plugin = {"pretty", "io.qameta.allure.cucumber4jvm.AllureCucumber4Jvm"},
        glue = {"com.project.stepdefs"})


public class TestRunner extends MyTestNGBaseClass {
    private io.cucumber.testng.TestNGCucumberRunner testNGCucumberRunner;

    //String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
    @BeforeClass(alwaysRun = true)
    public void setUpClass() {
        testNGCucumberRunner = new TestNGCucumberRunner(this.getClass());
    }

    @Test(groups = "cucumber", description = "Runs Cucumber Feature", dataProvider = "features", invocationCount =1)
    public void runScenario(PickleEventWrapper pickleWrapper, CucumberFeatureWrapper featureWrapper) throws Throwable {
        this.testNGCucumberRunner.runScenario(pickleWrapper.getPickleEvent());

    }

    @DataProvider
    public Object[][] features() {
        return testNGCucumberRunner.provideScenarios();
    }

    @AfterClass(alwaysRun = true)
    public void tearDownClass() {
        testNGCucumberRunner.finish();
    }

}
