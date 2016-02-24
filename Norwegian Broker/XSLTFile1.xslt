<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">

  <xsl:output method="html" indent="no" omit-xml-declaration="yes"/>

  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>
          EGENERKLÆRINGSSKJEMA
        </title>
        <style type="text/css">
          html {font-family: Calibri;margin: 0;}
          body {margin: 0; }
          #page {width: 100%; font-size: 12pt; color: black;}
          #pageheader {width: 100%;margin-bottom: 30px;}
          #logo {float: right;}
          #logo img {max-width: 200px; max-height: 80px;}
          h1,h2,h3 {margin: 0;word-wrap: break-word;hyphens: auto;}
          h1 {color: rgb(0, 91, 159);font-style: normal;font-weight: bold;text-decoration: none;font-size: 28pt;margin-bottom: 5px;}
          h2 {color: black;font-style: normal;font-weight: bold;text-decoration: none;font-size: 18pt;}
          h3 {color: rgb(0, 91, 159);font-style: normal;font-weight: bold;text-decoration: none;font-size: 14pt;}
          h3 span {color: black;font-weight: normal;font-size: 12pt;}
          .col-1,.col-2,.col-3,.col-4,.col-5,.col-6,.col-8,.col-9,.col-10,.col-12 {float: left;}
          .col-1 {width: 8.33%;}
          .col-2 {width: 16.67%;}
          .col-3 {width: 25%;}
          .col-4 {width: 33.33%;}
          .col-5 {width: 41.67%;}
          .col-6 {width: 50%;}
          .col-8 {width: 66.67%;}
          .col-9 {width: 75%;}
          .col-10 {width: 83.33%;}
          .col-12 {width: 100%;}
          .grey-box {page-break-inside: avoid; background-color: rgb(231, 232, 232);width: 100%;padding: 10px;margin-bottom: 10px;box-sizing: border-box;float: left;}

          .form-group {page-break-inside: avoid;margin-bottom: 5px;}

          .inline {float: left;}

          label {text-align: left;font-weight: bold; display: block; width: 100%;}
          .value {min-height: 34px;padding: 7px 10px 7px 10px;box-sizing: border-box;background-color: white;border: solid 1px black;word-wrap: break-word;hyphens: auto; width: 100%;}

          .label-blue label {background-color: rgb(0, 91, 159);color: white;}

          .inline label {line-height: 34px;text-align: center;float: left;width: 19%;margin-right: 1%;}
          .inline .value {width: 80%;float: right}
          .label-left label {text-align: left;}
          .label-font-normal label {font-weight: normal;}
          .label-wide label {width: 25%;}
          .label-wide .value {width: 74%;}
          .margin-top {margin-top: 7px;}

          .radio {width: 100%;}
          .radio .option {min-height: 34px;line-height: 34px;float: left;margin-right: 15px;}
          .radio .option .select {width: 12px; height: 12px; margin-right: 4px; border: 1px solid black; float:left; margin-top: 10px; position: relative; overflow: visible;background-color:white;}
          .radio .option .select.selected::before {content: "X";display: block;width: 12px;height: 12px;line-height: 10px;font-weight: bold;text-align: center;}
          .radio .option .title {float: left;}

          .postnummer label { width: 60%; margin-right: 0;}
          .postnummer .value { width: 40%;}
          .narkjopt label { width: 60%; margin-right: 0;}
          .narkjopt .value { width: 40%;}
          .hvorlengebodd label { width: 60%; margin-right: 0;}
          .hvorlengebodd .value { width: 40%;}
          .boddsiste12mnd label { width: 30%; margin-right: 0;}
          .boddsiste12mnd .value { width: 30%;}
          .selskaphusforsikring label { width: 65%; margin-right: 0;}
          .selskaphusforsikring .value { width: 35%;}
          .husforsikringavtalenr label { width: 40%; margin-right: 0;}
          .husforsikringavtalenr .value { width: 60%;}
          .fornavn label { width: 30%; margin-right: 0;}
          .fornavn .value { width: 70%;}
          .etternavn label { width: 30%; margin-right: 0;}
          .etternavn .value { width: 70%;}

          .eierskifteforsikring .radio .option {line-height: 24px;width: 100%;}
          .eierskifteforsikring .radio .option .select {margin-top:5px;}
          .eierskifteforsikring .radio .option .title {float: none;}

          .kommentar label { width: 100%; margin-right: 0; margin-bottom: 3px;}
          .kommentar .value { width: 100%;}

          .head { width: 100%; float: left; overflow: hidden; margin-top: 10px;  }

          .not-dodsbo { position: relative; background-color: white; width: 100%; overflow: hidden; float: left; }
          .is-dodsbo { position: relative; background-color: white; width: 100%; overflow: hidden; float: left; color: #aaa; }
          .is-dodsbo::after {
          color: red;
          font-size: 50pt;
          white-space: nowrap;
          content: "Fylles ikke ut i henhold til vilkår";
          position: absolute;
          top: 20%;
          left: 0;
          -webkit-transform: rotate(45deg);
          -moz-transform: rotate(45deg);
          -ms-transform: rotate(45deg);
          -o-transform: rotate(45deg);
          transform: rotate(45deg);
          text-align: center;
          }
          .is-dodsbo::before {
          color: red;
          font-size: 50pt;
          white-space: nowrap;
          content: "Fylles ikke ut i henhold til vilkår";
          position: absolute;
          bottom: 20%;
          left: 0;
          -webkit-transform: rotate(45deg);
          -moz-transform: rotate(45deg);
          -ms-transform: rotate(45deg);
          -o-transform: rotate(45deg);
          transform: rotate(45deg);
          text-align: center;
          }
          .is-dodsbo .radio .option .select { border-color: #aaa; }
          .is-dodsbo h3 { color: #aaa; }

          .print-signature-fields { width: 100%; float: left; overflow: hidden; page-break-inside: avoid;padding: 10px;box-sizing: border-box;border: solid 1px black; }
          .print-signature-info { width: 100%; float: left; overflow: hidden; margin-bottom: 40px; }
          .print-signature-info div { height: 40px; }
          .print-signature-date, .print-signature-place, .print-signature-field, .print-signature-field-right { height: 40px; float: left; width: 47.5%; margin-bottom: 10px; border-bottom: solid 1px black; }
          .print-signature-date, .print-signature-field { margin-right: 5%; }
          .print-signature-field, .print-signature-field-right { height: 60px; }
          .print-signature-field .firstname, .print-signature-field-right .firstname, .print-signature-field .lastname, .print-signature-field-right .lastname { display: inline-block; }
          .print-signature-field .firstname, .print-signature-field-right .firstname { margin-right: 5px; }

          #bankid-signatures {float:left;width:100%;overflow:hidden;height:400px;}
        </style>
      </head>
      <body>

        <div id="page">
          <div id="pageheader">
            <div id="logo">
              <xsl:choose>
                <xsl:when test="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = '_co']/CalculatedFieldValue = '0'">
                  <img alt="AmTrust Europe" title="AmTrust Europe, An AmTrust Financial Company" src="data:image/png;base64,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" />
                </xsl:when>
                <xsl:when test="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = '_co']/CalculatedFieldValue = '1'">
                  <img alt="Inter Hannover" title="Inter Hannover" src="data:image/png;base64,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" />
                </xsl:when>
              </xsl:choose>
            </div>
            <h1>EGENERKLÆRINGSSKJEMA</h1>
            <h2>Til orientering vil dette skjema være en del av salgsoppgaven</h2>
          </div>

          <div class="grey-box">
            <div class="inline col-12 label-blue">
              <label>Oppdragsnummer</label>
              <div class="value">
                <xsl:value-of select="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'onr']/CalculatedFieldValue"></xsl:value-of>
              </div>
            </div>
          </div>
          <!--grey-box-->

          <div class="grey-box">
            <div class="form-group inline col-12 label-blue">
              <label>Adresse</label>
              <div class="value">
                <xsl:value-of select="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'adresse']/CalculatedFieldValue"></xsl:value-of>
              </div>
            </div>

            <div class="col-12">
              <div class="form-group inline col-4 postnummer">
                <label>Postnummer</label>
                <div class="value">
                  <xsl:value-of select="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'postnummer']/CalculatedFieldValue"></xsl:value-of>
                </div>
              </div>

              <div class="form-group inline col-8 poststed">
                <label>Poststed</label>
                <div class="value">
                  <xsl:value-of select="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'poststed']/CalculatedFieldValue"></xsl:value-of>
                </div>
              </div>
            </div>
            <!--row-->

            <div class="form-group inline col-12 radio">
              <label>Er det dødsbo?</label>
              <div class="radio">
                <xsl:for-each select="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'dodsbo']/Options/Option">
                  <div class="option">
                    <div class="select">
                      <xsl:if test="Title = ancestor::Field/CalculatedFieldValue">
                        <xsl:attribute name="class">select selected</xsl:attribute>
                      </xsl:if>
                      <xsl:comment></xsl:comment>
                    </div>
                    <div class="title">
                      <xsl:value-of select="Title" />
                    </div>
                  </div>
                </xsl:for-each>
              </div>
            </div>
            <!--row-->

            <xsl:if test="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'dodsbo']/CalculatedFieldValue = 'Ja'">
              <div class="form-group inline col-12">
                <label>Avdødes navn</label>
                <div class="value">
                  <xsl:value-of select="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'avdode']/CalculatedFieldValue"></xsl:value-of>
                </div>
              </div>
            </xsl:if>
            <!--row-->

            <xsl:if test="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'dodsbo']/CalculatedFieldValue != 'Ja'">

              <div class="form-group col-12">
                <div class="form-group inline col-4 narkjopt">
                  <label>Når kjøpte du boligen?</label>
                  <div class="value">
                    <xsl:value-of select="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'narkjopt']/CalculatedFieldValue"></xsl:value-of>
                  </div>
                </div>

                <div class="form-group inline col-6 hvorlengebodd">
                  <label>Hvor lenge har du bodd i boligen?</label>
                  <div class="value">
                    <!--<xsl:if test="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'hvorlengeboddaar']/CalculatedFieldValue != ''">-->
                    <xsl:value-of select="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'hvorlengeboddaar']/CalculatedFieldValue"></xsl:value-of> år
                    <!--</xsl:if>-->
                    <!--<xsl:if test="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'hvorlengeboddmnd']/CalculatedFieldValue != ''">-->
                    <xsl:value-of select="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'hvorlengeboddmnd']/CalculatedFieldValue"></xsl:value-of> mnd
                    <!--</xsl:if>-->
                  </div>
                </div>
              </div>

              <div class="form-group col-12">
                <div class="form-group inline col-12 boddsiste12mnd radio">
                  <label>Har du bodd i boligen siste 12 mnd?</label>
                  <div class="radio">
                    <xsl:for-each select="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'boddsiste12mnd']/Options/Option">
                      <div class="option">
                        <div class="select">
                          <xsl:if test="Title = ancestor::Field/CalculatedFieldValue">
                            <xsl:attribute name="class">select selected</xsl:attribute>
                          </xsl:if>
                          <xsl:comment></xsl:comment>
                        </div>
                        <div class="title">
                          <xsl:value-of select="Title" />
                        </div>
                      </div>
                    </xsl:for-each>
                  </div>
                </div>
              </div>
              <!--row-->

              <div class="form-group col-12">
                <div class="form-group inline col-8 selskaphusforsikring">
                  <label>I hvilket forsikringsselskap har du tegnet villa/husforsikring?</label>
                  <div class="value">
                    <xsl:value-of select="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'selskaphusforsikring']/CalculatedFieldValue"></xsl:value-of>
                  </div>
                </div>

                <div class="form-group inline col-4 husforsikringavtalenr">
                  <label>Polise/avtalenr.</label>
                  <div class="value">
                    <xsl:value-of select="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'husforsikringavtalenr']/CalculatedFieldValue"></xsl:value-of>
                  </div>
                </div>
              </div>
              <!--row-->

            </xsl:if>
            <!--!dødsbo-->

            <div class="form-group col-12">
              <div class="form-group inline col-6 fornavn">
                <label>Selger 1 Fornavn</label>
                <div class="value">
                  <xsl:value-of select="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'selger1fornavn']/CalculatedFieldValue"></xsl:value-of>
                </div>
              </div>

              <div class="form-group inline col-6 etternavn">
                <label>Selger 1 Etternavn</label>
                <div class="value">
                  <xsl:value-of select="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'selger1etternavn']/CalculatedFieldValue"></xsl:value-of>
                </div>
              </div>
            </div>
            <!--row-->

            <xsl:for-each select="GroupedForm/SigneeRefs/FormSigneeRef">
              <xsl:variable name="index" select="position() + 1"/>
              <div class="form-group col-12">
                <div class="form-group inline col-6 fornavn">
                  <label>
                    Selger <xsl:value-of select="$index" /> Fornavn
                  </label>
                  <div class="value">
                    <xsl:value-of select="FirstName" />
                  </div>
                </div>

                <div class="form-group inline col-6 etternavn">
                  <label>
                    Selger <xsl:value-of select="$index" /> Etternavn
                  </label>
                  <div class="value">
                    <xsl:value-of select="LastName" />
                  </div>
                </div>
              </div>
            </xsl:for-each>

          </div>
          <!--grey-box-->

          <div class="not-dodsbo">
            <xsl:if test="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'dodsbo']/CalculatedFieldValue = 'Ja'">
              <xsl:attribute name="class">is-dodsbo</xsl:attribute>
            </xsl:if>

            <h3 class="head">SPØRSMÅL FOR ALLE TYPER EIENDOMMER</h3>

            <xsl:for-each select="GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field">
              <xsl:choose>
                <xsl:when test="(ExternalId != 'onr' and ExternalId != 'adresse' and ExternalId != 'postnummer' 
                        and ExternalId != 'poststed' and ExternalId != 'dodsbo' and ExternalId != 'avdode' and ExternalId != 'narkjopt'
                        and ExternalId != 'hvorlengeboddaar' and ExternalId != 'hvorlengeboddmnd' and ExternalId != 'boddsiste12mnd'
                        and ExternalId != 'selskaphusforsikring' and ExternalId != 'husforsikringavtalenr' 
                        and ExternalId != 'selger1fornavn' and ExternalId != 'selger1etternavn' 
                        and ExternalId != 'selger2fornavn' and ExternalId != 'selger2etternavn'
                        and ExternalId != 'by' and ExternalId != 'bz' and ExternalId != 'ca' and ExternalId != 'cb'
                        and ExternalId != 'kommentar' and ExternalId != 'eierskifteforsikring' and ExternalId != 'vilkar'
                        and ExternalId != '_co' and ExternalId != '_m' and ExternalId != '_useremail') 
                        and ShowFieldInPdf = 'true'">
                  <div class="form-group col-12">
                    <xsl:if test="FieldType = 'textfield' or FieldType = 'number'">
                      <xsl:attribute name="class">form-group inline col-12 label-left label-font-normal label-wide</xsl:attribute>
                    </xsl:if>
                    <xsl:if test="FieldType = 'radio'">
                      <xsl:attribute name="class">form-group col-12 margin-top</xsl:attribute>
                    </xsl:if>
                    <label>
                      <xsl:value-of select="Label"/>
                    </label>
                    <xsl:choose>
                      <xsl:when test="FieldType = 'radio'">
                        <div class="radio">
                          <xsl:for-each select="Options/Option">
                            <div class="option">
                              <div class="select">
                                <xsl:if test="Title = ancestor::Field/CalculatedFieldValue">
                                  <xsl:attribute name="class">select selected</xsl:attribute>
                                </xsl:if>
                                <xsl:comment>radio/option/select</xsl:comment>
                              </div>
                              <div class="title">
                                <xsl:value-of select="Title" />
                              </div>
                            </div>
                          </xsl:for-each>
                        </div>
                      </xsl:when>
                      <xsl:otherwise>
                        <div class="value">
                          <xsl:value-of select="CalculatedFieldValue"/>
                        </div>
                      </xsl:otherwise>
                    </xsl:choose>
                  </div>
                </xsl:when>
              </xsl:choose>
            </xsl:for-each>

            <h3 class="head">SPØRSMÅL FOR LEILIGHETER I SAMEIER/BORETTSLAG/BOLIGAKSJESELSKAP:</h3>

            <xsl:for-each select="GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field">
              <xsl:choose>
                <xsl:when test="(ExternalId = 'by' or ExternalId = 'bz' or ExternalId = 'ca' or ExternalId = 'cb') and ShowFieldInPdf = 'true'">

                  <div class="form-group col-12">
                    <xsl:if test="FieldType = 'textfield' or FieldType = 'number'">
                      <xsl:attribute name="class">form-group inline col-12 label-left label-font-normal label-wide</xsl:attribute>
                    </xsl:if>
                    <xsl:if test="FieldType = 'radio'">
                      <xsl:attribute name="class">form-group col-12 margin-top</xsl:attribute>
                    </xsl:if>
                    <label>
                      <xsl:value-of select="Label"/>
                    </label>
                    <xsl:choose>
                      <xsl:when test="FieldType = 'radio'">
                        <div class="radio">
                          <xsl:for-each select="Options/Option">
                            <div class="option">
                              <div class="select">
                                <xsl:if test="Title = ancestor::Field/CalculatedFieldValue">
                                  <xsl:attribute name="class">select selected</xsl:attribute>
                                </xsl:if>
                                <xsl:comment></xsl:comment>
                              </div>
                              <div class="title">
                                <xsl:value-of select="Title" />
                              </div>
                            </div>
                          </xsl:for-each>
                        </div>
                      </xsl:when>
                      <xsl:otherwise>
                        <div class="value">
                          <xsl:value-of select="CalculatedFieldValue"/>
                        </div>
                      </xsl:otherwise>
                    </xsl:choose>
                  </div>
                </xsl:when>
              </xsl:choose>
            </xsl:for-each>

          </div>

          <div class="form-group col-12 margin-top kommentar">
            <label>
              Tilleggskommentar
            </label>
            <div class="value">
              <xsl:value-of disable-output-escaping="yes" select="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'kommentar']/CalculatedFieldValue"></xsl:value-of>
              <xsl:comment></xsl:comment>
            </div>
          </div>
          <!--row-->

          <div class="form-group col-12 margin-top eierskifteforsikring">
            <label>Eierskifteforsikring</label>

            <div class="radio">
              <xsl:for-each select="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'eierskifteforsikring']/Options/Option">
                <div class="option">
                  <div class="select">
                    <xsl:if test="Title = ancestor::Field/CalculatedFieldValue">
                      <xsl:attribute name="class">select selected</xsl:attribute>
                    </xsl:if>
                    <xsl:comment></xsl:comment>
                  </div>
                  <div class="title">
                    <xsl:choose>
                      <xsl:when test="Title = 'Ja'">
                        Jeg ønsker å tegne eierskifteforsikring, og bekrefter å ha mottatt og lest forsikringsvilkårene og informasjonsbrosjyre til selger i forbindelse med tegning av eierskifteforsikring. Forsikringen trer i kraft på det tidspunkt det foreligger en budaksept mellom partene, begrenset til tolv måneder før overtagelse. Ved oppgjørsoppdrag trer forsikringen i kraft når kontrakten er signert av begge parter, begrenset til siste 12 måneder før overtakelse. Jeg bekrefter med dette at eiendommen ikke er en næringseiendom, at den ikke selges som ledd i næringsvirksomhet eller mellom ektefeller eller slektninger i rett oppstigende eller nedstigende linje, søsken, eller mellom personer som bor eller har bodd på boligeiendommen. Forsikringen er ugyldig dersom den tegnes i strid med forsikringsvilkårene. Jeg er innforstått med at eiendomsmegleren ikke har fullmakt til å gjøre unntak fra ovennevnte begrensninger. Jeg er oppmerksom på at 8% av total forsikringskostnad er honorar til Norwegian Broker AS.
                      </xsl:when>
                      <xsl:when test="Title = 'Nei'">
                        Jeg ønsker ikke å tegne eierskifteforsikring, men megler har tilbudt meg å tegne slik forsikring.
                      </xsl:when>
                    </xsl:choose>
                  </div>
                </div>
              </xsl:for-each>
            </div>

          </div>
          <!--row-->

          <div class="grey-box" style="page-break-inside: avoid;">
            <xsl:choose>
              <xsl:when test="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = '_co']/CalculatedFieldValue = '0'">
                Jeg bekrefter at opplysningene er gitt etter beste skjønn. Jeg er kjent med at dersom jeg har gitt ufullstendige, uriktige eller<br/>
                misvisende opplysninger om eiendommen, vil selskapet kunne søke hel eller delvis regress for sine utbetalinger eller redusere<br/>
                sitt ansvar helt eller delvis, jfr.  vilkår for eierskifteforsikring punkt V4 og forsikringsavtaleloven kapittel 4.<br/>
                Jeg er orientert om mitt mulige ansvar som selger etter avhendingsloven, eventuelt etter kjøpsloven (aksjeboliger),<br/>
                og om AmTrust Europe Limited sitt eierskifteforsikringstilbud. Jeg er klar over at avtale om forsikring er bindende.<br/>
                Premietilbudet som er gitt av megler er bindende for AmTrust Europe Limited i 6 – seks – måneder fra signering<br/>
                av dette skjema, deretter vil premien kunne justeres.<br/>
                Etter 6 måneder må egenerklæringsskjemaet signeres på nytt og eventuelle endringer påføres.<br/>
                Det vil da være forsikringspremien på ny signeringsdato som legges til grunn.
              </xsl:when>
              <xsl:when test="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = '_co']/CalculatedFieldValue = '1'">
                Jeg bekrefter at opplysningene er gitt etter beste skjønn. Jeg er kjent med at dersom jeg har gitt ufullstendige, uriktige eller<br/>
                misvisende opplysninger om eiendommen, vil selskapet kunne søke hel eller delvis regress for sine utbetalinger eller redusere<br/>
                sitt ansvar helt eller delvis, jfr. vilkår for eierskifteforsikring punkt 6.1- og forsikringsavtaleloven kapittel 4.<br/>
                Jeg er orientert om mitt mulige ansvar som selger etter avhendingsloven, eventuelt etter kjøpsloven (aksjeboliger),<br/>
                og om International Insurance Company of Hannover SE sitt eierskifteforsikringstilbud. Jeg er klar over at avtale om forsikring er bindende. <br/>
                Premietilbudet som er gitt av megler er bindende for International Insurance Company of Hannover SE i 6 – seks – måneder fra signering <br/>
                av dette skjema, deretter vil premien kunne justeres.<br/>
                Etter 6 måneder må egenerklæringsskjemaet signeres på nytt og eventuelle endringer påføres.<br/>
                Det vil da være forsikringspremien på ny signeringsdato som legges til grunn.
              </xsl:when>
            </xsl:choose>
          </div>

          <div class="grey-box" style="page-break-inside: avoid;">
            Det kan ikke tegnes eierskifteforsikring ved salg av boligeiendom i følgende tilfeller:<br/>
            - mellom ektefeller eller slektninger i rett oppstigende eller nedstigende linje, søsken, eller<br/>
            - mellom personer som bor eller har bodd på boligeiendommen og/eller<br/>
            - når salget skjer som ledd i sikredes næringsvirksomhet/er en næringseiendom<br/>
            - etter at boligeiendommen er lagt ut for salg.<br/>
            Forsikringsselskapet kan ved skriftlig samtykke akseptere tegning av forsikring også i ovennevnte tilfeller.<br/>
            Dersom selskapet ikke har gitt skriftlig samtykke, kan erstatningen bortfalle.<br/>
            Ved oppgjørsoppdrag trer forsikringen i kraft når kontrakten er signert av begge parter, begrenset til siste 12 måneder før overtakelse.<br/>
            <br/>
            <strong>For øvrig oppfordrer selger potensielle kjøpere til å undersøke eiendommen grundig, jf avhendingslovens § 3-10 og kjøpslovens § 20 (aksjeboliger).</strong>
          </div>

          <div class="grey-box" style="page-break-inside: avoid;">
            Ved signering av nærværende skjema aksepteres at Norwegian Broker AS og Signere.no AS ikke har ansvar for transaksjonen som tjenesten benyttes til, og ikke kan holdes ansvarlig for eventuelt tap av noen art som følge av brukerfeil, eventuelle feil ved Signere.no sine tjenester eller tredjepartsløsninger, herunder BankID.
          </div>

          <xsl:choose>
            <xsl:when test="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = '_m']/CalculatedFieldValue = 'pdf'">
              <div class="print-signature-fields">

                <div class="print-signature-info">
                  <div class="print-signature-date">
                    Dato
                  </div>
                  <div class="print-signature-place">
                    Sted
                  </div>
                </div>

                <div class="print-signature-field">
                  <label>
                    Signatur selger 1 (<span class="firstname">
                      <xsl:value-of select="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'selger1fornavn']/CalculatedFieldValue" />
                    </span> <span class="lastname">
                      <xsl:value-of select="/GroupedForm/GroupedFormFieldGroups/GroupedFormFieldGroup/Fields/Field[ExternalId = 'selger1etternavn']/CalculatedFieldValue" />
                    </span>)
                  </label>
                </div>

                <xsl:for-each select="GroupedForm/SigneeRefs/FormSigneeRef">
                  <xsl:variable name="index" select="position() + 1"/>

                  <div class="print-signature-field">
                    <xsl:if test="($index mod 2) = 0">
                      <xsl:attribute name="class">print-signature-field-right</xsl:attribute>
                    </xsl:if>
                    <label>
                      Signatur selger <xsl:value-of select="$index" /> (<span class="firstname">
                        <xsl:value-of select="FirstName" />
                      </span> <span class="lastname">
                        <xsl:value-of select="LastName" />
                      </span>)
                    </label>
                  </div>

                </xsl:for-each>
              </div>
            </xsl:when>
          </xsl:choose>

          <div id="bankid-signatures">
            <xsl:comment></xsl:comment>
          </div>

        </div>
        <!--page-->

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>