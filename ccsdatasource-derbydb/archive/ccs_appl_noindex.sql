CREATE TABLE ALERTS
(
        N_ALERT_ID            CHAR(16) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        C_ALERT_TYPE          CHAR(5) NOT NULL, 
        T_ALERT_DESC          VARCHAR(254) NOT NULL, 
        D_ACTV_DT             TIMESTAMP NOT NULL, 
        D_INACTV_DT           TIMESTAMP NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);

CREATE TABLE ANSWER
(
        N_ANSWER_ID           CHAR(16) NOT NULL, 
        N_SEQUENCE_NUM        INTEGER NOT NULL, 
        N_CONVERSATION_ID     CHAR(16) NOT NULL, 
        N_CONV_RULE_ID        CHAR(16) NOT NULL, 
        N_NODE_ID             CHAR(16) NOT NULL, 
        T_STRING_ANSWER       VARCHAR(4000), 
        D_DATE_ANSWER         TIMESTAMP, 
        N_INTEGER_ANSWER      INTEGER, 
        N_DOUBLE_ANSWER       DECIMAL(19, 6), 
        A_CURRENCY_ANSWER     DECIMAL(19, 6), 
        C_CODE_ANSWER         CHAR(5), 
        C_BOOLEAN             CHAR(1), 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL
);

CREATE TABLE ASK_NOTIF_DOC
(
        N_ASK_NOTIF_DOC_ID    CHAR(16) NOT NULL, 
        N_ASK_NOTIF_ID        CHAR(16) NOT NULL DEFAULT '', 
        N_AKT_NBR             CHAR(4) NOT NULL DEFAULT '', 
        T_AKT_HEADLINE        VARCHAR(1016) NOT NULL DEFAULT '', 
        N_DOC_REF             CHAR(15) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);

CREATE TABLE ASK_NOTIFICATION
(
        N_ASK_NOTIF_ID        CHAR(16) NOT NULL, 
        T_PARTY_CODE          CHAR(16) NOT NULL DEFAULT '', 
        D_LETTER_DT           TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        N_FORM_TMPL_NO        VARCHAR(25) NOT NULL DEFAULT '', 
        T_AKT_HEADLINE        VARCHAR(1016) NOT NULL DEFAULT '', 
        N_AKT_NBR             CHAR(4) NOT NULL DEFAULT '', 
        T_MAIN_RECIPIENT      CHAR(16) NOT NULL DEFAULT '', 
        N_MAIN_DOC_REF        CHAR(15) NOT NULL DEFAULT '', 
        N_PRINT_JOB_ID        CHAR(8) NOT NULL DEFAULT '', 
        T_DIAGNOSIS           VARCHAR(100) NOT NULL DEFAULT '', 
        M_CLAIMANT_NAME       VARCHAR(68) NOT NULL DEFAULT '', 
        D_DOL_DT              TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        N_POLICY_NO           VARCHAR(30) NOT NULL DEFAULT '', 
        N_CLAIM_NO            VARCHAR(55) NOT NULL DEFAULT '', 
        N_BIRTHDATE           CHAR(6) NOT NULL DEFAULT '', 
        N_CPR_SEQUENCE        CHAR(4) NOT NULL DEFAULT '', 
        N_ASK_CLAIM_SEQ       CHAR(2) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);

CREATE TABLE ASSESSOR_REQUEST
(
        N_ASSR_REQUEST_ID     CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        C_STATUS              CHAR(5) NOT NULL, 
        C_ATTACHMENT          CHAR(5) NOT NULL, 
        C_CLM_OWNR_AS_ASSR    CHAR(5) NOT NULL, 
        C_ASSESSOR_TYPE       CHAR(5) NOT NULL, 
        T_RELATED_CLAIM       CHAR(20) NOT NULL, 
        T_INFO_TO_BOOKING     VARCHAR(250) NOT NULL, 
        T_CONTACT_PHONE       CHAR(15) NOT NULL, 
        T_CONTACT_MAIL        VARCHAR(150) NOT NULL, 
        C_RESERVATION         CHAR(5) NOT NULL, 
        T_INFO_TO_ASSESSOR    VARCHAR(512) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_ASSOR_TASK_TYPE     CHAR(5) NOT NULL DEFAULT '', 
        C_URGENT_MATTER       CHAR(1) NOT NULL DEFAULT 'N'
);

CREATE TABLE ASSIGNMENT
(
        N_ASSIGNMENT_ID       CHAR(16) NOT NULL, 
        N_NEW_ASSMT_ID        CHAR(16), 
        N_ORIG_ASSMT_ID       CHAR(16), 
        N_SUPPLIER_ID         CHAR(16) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        N_CMT_INS_INVL_ID     CHAR(16) NOT NULL, 
        N_SUP_INS_INVL_ID     CHAR(16) NOT NULL, 
        N_ASSIGNMENT_NBR      CHAR(11) NOT NULL, 
        C_ASSMT_STATUS        CHAR(5) NOT NULL, 
        M_NAME                CHAR(60) NOT NULL, 
        C_KRAK_GEO_CODE_X     DECIMAL(19, 6), 
        C_KRAK_GEO_CODE_Y     DECIMAL(19, 6), 
        M_STREET_NAME         CHAR(32) NOT NULL, 
        M_STREET_NO           CHAR(9) NOT NULL, 
        M_FLOOR               CHAR(12) NOT NULL, 
        M_SUB_CITY_NAME       CHAR(32) NOT NULL, 
        C_POSTAL_CODE         CHAR(9) NOT NULL, 
        M_CITY_NAME           CHAR(32) NOT NULL, 
        M_PRIVATE_PHONE       CHAR(15) NOT NULL, 
        M_BUS_PHONE           CHAR(15) NOT NULL, 
        M_MOB_PHONE           CHAR(15) NOT NULL, 
        M_EMAIL               CHAR(133) NOT NULL, 
        C_PREF_CONTACT        CHAR(5) NOT NULL, 
        C_SUPP_TYPE           CHAR(5) NOT NULL, 
        C_COPY_TO_CUST_IND    CHAR(1) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        N_ASSIGNMENT_VER      CHAR(3) NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_COUNTRY             CHAR(5) NOT NULL, 
        C_REPORT_IND          CHAR(5) NOT NULL DEFAULT 'SARNO', 
        C_CAR_MAKE            CHAR(5) NOT NULL DEFAULT '', 
        C_VAT_REG_NEED_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_VAT_REG_TYPE        CHAR(5) NOT NULL DEFAULT ''
);

CREATE TABLE ASSIGNMENT_COUNT
(
        N_ASSMT_CNT_ID        CHAR(16) NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        Q_OPEN_CLAIM_COUNT    INTEGER NOT NULL, 
        C_COMPLEXITY          CHAR(5) NOT NULL, 
        C_PRFMR_ROLE          CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        Q_OPEN_LINES_COUNT    INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE ASSIGNMENT_NOTE
(
        N_ASSMT_NOTE_ID       CHAR(16) NOT NULL, 
        C_NOTE_TYPE           CHAR(5) NOT NULL, 
        T_NOTE_TEXT           VARCHAR(8000) NOT NULL, 
        N_ASSIGNMENT_ID       CHAR(16) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);

CREATE TABLE ASSIGNMENT_PATTERN
(
        N_ASSIGN_PTN_ID       CHAR(16) NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        N_PATTERN_ID          CHAR(16) NOT NULL, 
        N_RANK                INTEGER, 
        C_REQ_MATCH_IND       CHAR(1), 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL
);

CREATE TABLE ASSIGNMENT_RULES
(
        N_ASSIGN_RULES_ID     CHAR(16) NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        C_RULE_CD             CHAR(5) NOT NULL, 
        M_VALUE               VARCHAR(50) NOT NULL, 
        C_REQUIRED_IND        CHAR(1) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL
);

CREATE TABLE ASSMT_ITEM_XREF
(
        N_ITEM_XREF_ID        CHAR(16) NOT NULL, 
        N_ITEM_ID             CHAR(16) NOT NULL, 
        N_ASSIGNMENT_ID       CHAR(16) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);

CREATE TABLE ASSMT_LINE_XREF
(
        N_LINE_XREF_ID        CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        N_ASSIGNMENT_ID       CHAR(16) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE TABLE ASSMT_NBR_SEQUENCE
(
        N_YEAR                CHAR(4) NOT NULL, 
        N_SEQUENCE            INTEGER NOT NULL
);


   

CREATE TABLE ATTACH_METADATA
(
        ATTACHMENT_ID         VARCHAR(16) NOT NULL, 
        DESCRIPTION           VARCHAR(100), 
        CONTENT_TYPE          VARCHAR(100) NOT NULL, 
        FILE_NAME             VARCHAR(100) NOT NULL, 
        LAST_UPDATED_BY       VARCHAR(20) NOT NULL, 
        LAST_UPDATED_AT       TIMESTAMP NOT NULL, 
        TEMP_IND              CHAR(1) NOT NULL, 
        IS_DELETED            CHAR(1)
);


   

CREATE TABLE ATTACH_PHYSICAL
(
        ATTACHMENT_ID         VARCHAR(16) NOT NULL, 
        ATTACHMENT_SEQ        SMALLINT NOT NULL, 
        ATTACHMENT_CONTENT    BLOB(32768) NOT NULL, 
        TEMP_IND              CHAR(1) NOT NULL, 
        ATTACHMENT_ROWID      ROWID NOT NULL
                GENERATED BY DEFAULT 
);



CREATE TABLE ATTRNY_LTGTN
(
        N_ATTRNY_LTGTN_ID     CHAR(16) NOT NULL, 
        N_LTGTN_ID            CHAR(16) NOT NULL, 
        N_INVL_ROLE_ID        CHAR(16), 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE TABLE AUTOGLASS_AGREEMNT
(
        N_GLASS_AGREEMT_ID    CHAR(16) NOT NULL, 
        A_PEPPLE_REP_F_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_PEPPLE_REP_F_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_PEPPLE_REP_N_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_PEPPLE_REP_N_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_PEPPLE_REP_A_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_PEPPLE_REP_A_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_GLUE_KIT_AMT        DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_GLUE_KIT_UOM        CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_ENVIRONMENT_FEE     DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_ENVIRONMENT_UOM     CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_VARIOUS_AMT         DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        A_VARIOUS_UOM         CHAR(5) NOT NULL DEFAULT 'DKK', 
        F_DISC_FRO_WINDSCR    DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        F_DISC_OTH_WINDSCR    DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        F_DISC_LIGHT_MIRRO    DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        F_DISC_SPARE_PARTS    DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL
);



   

CREATE TABLE AUTOTAKS_REPORT
(
        N_AUTOTAKS_REP_ID     CHAR(16) NOT NULL DEFAULT '', 
        N_LINE_ID             CHAR(16) NOT NULL DEFAULT x'05', 
        N_DAMAGE_ZONES_ID     CHAR(16) NOT NULL DEFAULT x'05', 
        N_SUPPLIER_ID         CHAR(16) DEFAULT x'05', 
        N_SUPP_HEADOFF_ID     CHAR(16) DEFAULT x'05', 
        N_INIT_COMPANY_CD     INTEGER NOT NULL DEFAULT 0, 
        N_INIT_ASSESSOR_NO    INTEGER NOT NULL DEFAULT 0, 
        N_FIN_ASSESSOR_NO     INTEGER NOT NULL DEFAULT 0, 
        N_REPORT_CLAIM_NO     VARCHAR(35) NOT NULL DEFAULT '', 
        D_DOL_DT              TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        D_INVESTIGATION_DT    TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        D_CREATION_DATE       TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        N_CREATED_YEAR        INTEGER NOT NULL DEFAULT 0, 
        N_SERIAL_NO           INTEGER NOT NULL DEFAULT 0, 
        T_REPORT_TYPE         CHAR(2) NOT NULL DEFAULT '', 
        N_SEQUENCE_NO         INTEGER NOT NULL DEFAULT 0, 
        C_LIABILITY_IND       CHAR(1) NOT NULL DEFAULT 'N', 
        C_ASSESSMENT_CODE     CHAR(5) NOT NULL DEFAULT '', 
        C_APPROVED_IND        CHAR(1) NOT NULL DEFAULT 'N', 
        N_REP_POLICY_NO       VARCHAR(35) NOT NULL DEFAULT '', 
        C_RESERVATION_CODE    CHAR(5) NOT NULL DEFAULT '', 
        C_REBUILD_IND         CHAR(1) NOT NULL DEFAULT 'N', 
        C_NOTIFICA_REC_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_TOPPRO_HANDL_IND    CHAR(1) NOT NULL DEFAULT 'Y', 
        N_PH_VEHICLE_RNO      CHAR(10) NOT NULL DEFAULT '', 
        N_ASS_VEHICLE_RNO     CHAR(10) NOT NULL DEFAULT '', 
        N_ASS_VEHICLE_VIN     VARCHAR(25) NOT NULL DEFAULT '', 
        N_KM_MILEAGE          INTEGER NOT NULL DEFAULT 0, 
        C_DAM_CAUSE_TYPE      CHAR(5) NOT NULL DEFAULT '', 
        A_VAT_LIABLE_AMT      DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_VAT_LIABLE_UOM      CHAR(5) NOT NULL DEFAULT '', 
        A_VAT_AMT             DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_VAT_UOM             CHAR(5) NOT NULL DEFAULT '', 
        A_TOTAL_I_VAT_AMT     DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_TOTAL_I_VAT_UOM     CHAR(5) NOT NULL DEFAULT '', 
        A_CH_APPROVED_AMT     DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_CH_APPROVED_UOM     CHAR(5) NOT NULL DEFAULT '', 
        A_DEMANDED_AMT        DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_DEMANDED_UOM        CHAR(5) NOT NULL DEFAULT '', 
        T_REMARKS             VARCHAR(1000) NOT NULL DEFAULT '', 
        T_INTERNAL_REMARKS    VARCHAR(1000) NOT NULL DEFAULT '', 
        N_RECIEVER_BNK_RNO    CHAR(8) NOT NULL DEFAULT '', 
        N_RECIEVER_BNK_NO     CHAR(16) NOT NULL DEFAULT '', 
        N_F_AND_P_ID          DECIMAL(19) NOT NULL DEFAULT 0, 
        C_AUTOTAKS_FRONTPG    VARCHAR(12000) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL, 
        A_CAR_REMAINS_AMT     DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_CAR_REMAINS_UOM     CHAR(5) NOT NULL DEFAULT '', 
        C_ASSESS_COMP_CD      CHAR(2) NOT NULL DEFAULT '', 
        C_REPORT_STATUS       CHAR(2) NOT NULL DEFAULT '', 
        N_F_AND_P_NO          VARCHAR(19) NOT NULL DEFAULT '', 
        A_TOT_I_VAT_FE_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        A_TOT_I_VAT_FE_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_PLATE_AMT           DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_PLATE_UOM           CHAR(5) NOT NULL DEFAULT 'DKK'
);



CREATE TABLE AVAILABILITY
(
        N_AVAILABILITY_ID     CHAR(16) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        D_FROM_DATE           TIMESTAMP NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        D_TO_DATE             TIMESTAMP NOT NULL, 
        Q_AVAIL_PCT           DECIMAL(5, 2) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        M_AVAILABILITY_RSN    VARCHAR(50) NOT NULL
);




   

CREATE TABLE BI_AENDRING
(
        AENDRING_ID           INTEGER NOT NULL, 
        EKSP_LOG_ID_1         INTEGER NOT NULL, 
        EKSP_LOG_ID_2         INTEGER NOT NULL, 
        TMSTMP_OPR            TIMESTAMP NOT NULL, 
        TMSTMP_CLIENT         TIMESTAMP NOT NULL, 
        STAT                  CHAR(02) NOT NULL, 
        TMSTMP_COMMIT         TIMESTAMP NOT NULL, 
        FOR_EKSTERNTNR        CHAR(10) NOT NULL, 
        IKRAFTDATO            DATE NOT NULL, 
        AENDRING_TEKST        CHAR(10) NOT NULL
);



CREATE TABLE BI_AFSTEM_REV_SPOR
(
        CCS_POST_KEY          INTEGER NOT NULL, 
        EKSP_ID               INTEGER NOT NULL, 
        KONTONR               CHAR(6) NOT NULL, 
        POSTERINGSKODE        CHAR(3) NOT NULL, 
        ULTIMO_SUM            DECIMAL(15, 2) NOT NULL
);


   

CREATE TABLE BI_AFSTEM_SALDO
(
        AFSTEM_SALDO_ID       INTEGER NOT NULL, 
        EKSP_LOG_ID           INTEGER NOT NULL, 
        OPRET_TMSTMP          TIMESTAMP NOT NULL, 
        FRA_TMSTMP            TIMESTAMP NOT NULL, 
        TIL_TMSTMP            TIMESTAMP NOT NULL, 
        PRIMO_SUM             DECIMAL(15, 2) NOT NULL, 
        ULTIMO_SUM            DECIMAL(15, 2) NOT NULL, 
        KONTONR               CHAR(6) NOT NULL, 
        POSTERINGSKODE        CHAR(3) NOT NULL
);


   

CREATE TABLE BI_BETALING
(
        BETALING_ID           INTEGER NOT NULL, 
        EKSP_LOG_ID_1         INTEGER NOT NULL, 
        EKSP_LOG_ID_2         INTEGER NOT NULL, 
        TMSTMP_OPR            TIMESTAMP NOT NULL, 
        TMSTMP_CLIENT         TIMESTAMP NOT NULL, 
        STAT                  CHAR(01) NOT NULL, 
        TMSTMP_COMMIT         TIMESTAMP NOT NULL, 
        QCODE                 CHAR(04) NOT NULL, 
        KONTO                 CHAR(07) NOT NULL, 
        OPKODE                CHAR(01) NOT NULL, 
        OPKEY                 CHAR(14) NOT NULL, 
        MOD10                 DECIMAL(01) NOT NULL, 
        OPDATO                DATE NOT NULL, 
        OPBELOEB              DECIMAL(15, 2) NOT NULL
);




   

CREATE TABLE BI_BOGFOER
(
        BOGFOER_ID            INTEGER NOT NULL, 
        EKSP_LOG_ID_1         INTEGER NOT NULL, 
        EKSP_LOG_ID_2         INTEGER NOT NULL, 
        TMSTMP_OPR            TIMESTAMP NOT NULL, 
        TMSTMP_CLIENT         TIMESTAMP NOT NULL, 
        STAT                  CHAR(01) NOT NULL, 
        TMSTMP_COMMIT         TIMESTAMP NOT NULL, 
        TRSP_ID               CHAR(16) NOT NULL, 
        FORSART               CHAR(3) NOT NULL, 
        GENFORS               DECIMAL(15, 2) NOT NULL, 
        KOERAAR               CHAR(4) NOT NULL, 
        KOERDG                CHAR(2) NOT NULL, 
        KOERMD                CHAR(2) NOT NULL, 
        LITRA                 CHAR(3) NOT NULL, 
        OBJEKT                CHAR(2) NOT NULL, 
        ORGKODE               CHAR(1) NOT NULL, 
        POSTBEL               DECIMAL(15, 2) NOT NULL, 
        POSTDAT               DATE NOT NULL, 
        POSTKOD               CHAR(3) NOT NULL, 
        RECTYPE               CHAR(3) NOT NULL, 
        REGRES                DECIMAL(15, 2) NOT NULL, 
        SAPCENTR              CHAR(4) NOT NULL, 
        SAPKONTO              CHAR(6) NOT NULL, 
        SAPSTED               CHAR(4) NOT NULL, 
        SELSKAB               CHAR(4) NOT NULL, 
        SKADAAR               CHAR(4) NOT NULL, 
        SKADART               CHAR(2) NOT NULL, 
        SKADENR               CHAR(15) NOT NULL, 
        SKADTYP               CHAR(2) NOT NULL, 
        SKATBEL               DECIMAL(15, 2) NOT NULL, 
        SOURCE_SYSTEM         CHAR(2) NOT NULL, 
        TEKST                 CHAR(25) NOT NULL, 
        UDBKODE               CHAR(2) NOT NULL, 
        CVR_CPR_NUMBER        CHAR(10) NOT NULL DEFAULT '', 
        INTERR_ID             CHAR(7) NOT NULL DEFAULT ''
);


   

CREATE TABLE BI_BRANDKS_OPG
(
        BRANDKS_OPG_ID        INTEGER NOT NULL, 
        EKSP_LOG_ID_1         INTEGER NOT NULL, 
        EKSP_LOG_ID_2         INTEGER NOT NULL, 
        TMSTMP_OPR            TIMESTAMP NOT NULL, 
        TMSTMP_CLIENT         TIMESTAMP NOT NULL, 
        STAT                  CHAR(01) NOT NULL, 
        TMSTMP_COMMIT         TIMESTAMP NOT NULL, 
        TRSP_ID               CHAR(16) NOT NULL, 
        LITRA                 CHAR(02) NOT NULL, 
        SKADENR               CHAR(14) NOT NULL, 
        BKNR                  CHAR(02) NOT NULL, 
        NAVN                  CHAR(32) NOT NULL, 
        SBELOEB               DECIMAL(9, 2) NOT NULL, 
        SGENST                CHAR(03) NOT NULL, 
        SSKADT                DATE NOT NULL, 
        SEXPDT                DATE NOT NULL, 
        SAFSKD                CHAR(02) NOT NULL
);



CREATE TABLE BI_BRNKSAFR
(
        BRNKSAFR_ID           INTEGER NOT NULL, 
        EKSP_LOG_ID_1         INTEGER NOT NULL, 
        EKSP_LOG_ID_2         INTEGER NOT NULL, 
        TMSTMP_OPR            TIMESTAMP NOT NULL, 
        TMSTMP_CLIENT         TIMESTAMP NOT NULL, 
        STAT                  CHAR(01) NOT NULL, 
        TMSTMP_COMMIT         TIMESTAMP NOT NULL, 
        TRSP_ID               CHAR(16) NOT NULL, 
        NAVN                  CHAR(37) NOT NULL, 
        CONAVN                CHAR(32) NOT NULL, 
        ADRESSE               CHAR(37) NOT NULL, 
        UADRESSE              CHAR(42) NOT NULL, 
        POSTNR                CHAR(04) NOT NULL, 
        POHUS                 CHAR(27) NOT NULL, 
        DAGSDATO              CHAR(10) NOT NULL, 
        FORSKEY               CHAR(20) NOT NULL, 
        SKADATO               CHAR(10) NOT NULL, 
        FORSNAVN              CHAR(32) NOT NULL, 
        FORSCO                CHAR(34) NOT NULL, 
        FORSADR               CHAR(32) NOT NULL, 
        FORSUADR              CHAR(34) NOT NULL, 
        FORSPNR               CHAR(04) NOT NULL, 
        FORSPHUS              CHAR(27) NOT NULL, 
        BRKNUM                CHAR(02) NOT NULL, 
        SELVPRO               CHAR(05) NOT NULL, 
        SKADTYP               CHAR(50) NOT NULL, 
        LITRA                 CHAR(02) NOT NULL, 
        SKADAARS              CHAR(50) NOT NULL, 
        SKADBES               CHAR(50) NOT NULL, 
        TILLMAN               CHAR(32) NOT NULL, 
        TAKSMAN               CHAR(32) NOT NULL, 
        SKTOT                 DECIMAL(11, 2) NOT NULL, 
        BKTOT                 DECIMAL(11, 2) NOT NULL, 
        IATOT                 DECIMAL(11, 2) NOT NULL, 
        BKIAL                 DECIMAL(11, 2) NOT NULL, 
        ESTIM                 CHAR(07) NOT NULL, 
        STATUS                CHAR(15) NOT NULL, 
        SAGSBE                CHAR(24) NOT NULL, 
        TLFON                 CHAR(19) NOT NULL, 
        AFDELBE               CHAR(12) NOT NULL
);




   

CREATE TABLE BI_CHECKIN
(
        CHECKIN_ID            INTEGER NOT NULL, 
        EKSP_LOG_ID_1         INTEGER NOT NULL, 
        EKSP_LOG_ID_2         INTEGER NOT NULL, 
        TMSTMP_OPR            TIMESTAMP NOT NULL, 
        TMSTMP_CLIENT         TIMESTAMP NOT NULL, 
        STAT                  CHAR(01) NOT NULL, 
        TMSTMP_COMMIT         TIMESTAMP NOT NULL, 
        STMKD                 CHAR(02) NOT NULL, 
        SKNR                  CHAR(15) NOT NULL, 
        CHNR                  CHAR(08) NOT NULL, 
        BETAL_ID              CHAR(16) NOT NULL
);



   

CREATE TABLE BI_CHECKUD
(
        CHECKUD_ID            INTEGER NOT NULL, 
        EKSP_LOG_ID_1         INTEGER NOT NULL, 
        EKSP_LOG_ID_2         INTEGER NOT NULL, 
        TMSTMP_OPR            TIMESTAMP NOT NULL, 
        TMSTMP_CLIENT         TIMESTAMP NOT NULL, 
        STAT                  CHAR(01) NOT NULL, 
        TMSTMP_COMMIT         TIMESTAMP NOT NULL, 
        TRSP_ID               CHAR(16) NOT NULL, 
        STMKD                 CHAR(02) NOT NULL, 
        AFDKD                 CHAR(02) NOT NULL, 
        LITRA                 CHAR(02) NOT NULL, 
        SKNR                  CHAR(15) NOT NULL, 
        EKSDT                 CHAR(10) NOT NULL, 
        ORGKD                 CHAR(01) NOT NULL, 
        SAPPLID               CHAR(03) NOT NULL, 
        MTNAVN                CHAR(32) NOT NULL, 
        MTCNVN                CHAR(32) NOT NULL, 
        MTADR                 CHAR(32) NOT NULL, 
        MTUADR                CHAR(32) NOT NULL, 
        MTPNR                 CHAR(04) NOT NULL, 
        MTPHUS                CHAR(13) NOT NULL, 
        UDBKD                 CHAR(02) NOT NULL, 
        TOTBL                 DECIMAL(11, 2) NOT NULL, 
        REFTK1                CHAR(20) NOT NULL, 
        REFTK2                CHAR(33) NOT NULL, 
        REFTK3                CHAR(33) NOT NULL, 
        REFTK4                CHAR(33) NOT NULL, 
        REFTK5                CHAR(33) NOT NULL, 
        GTINR                 CHAR(07) NOT NULL, 
        ALT_FORSEND           CHAR(1) NOT NULL DEFAULT '', 
        ALT_NAVN              CHAR(32) NOT NULL DEFAULT '', 
        ALT_CONVN             CHAR(32) NOT NULL DEFAULT '', 
        ALT_ADR               CHAR(32) NOT NULL DEFAULT '', 
        ALT_UADR              CHAR(32) NOT NULL DEFAULT '', 
        ALT_POST              CHAR(4) NOT NULL DEFAULT '', 
        ALT_BYNVN             CHAR(27) NOT NULL DEFAULT ''
);



CREATE TABLE BI_EDI_REGRES
(
        EDI_REGRES_ID         INTEGER NOT NULL DEFAULT 0, 
        EKSP_LOG_ID           INTEGER NOT NULL DEFAULT 0, 
        INSERT_DT             TIMESTAMP NOT NULL, 
        STATUS_DT             TIMESTAMP NOT NULL, 
        STATUS                CHAR(1) NOT NULL DEFAULT '', 
        MODT_AFSENDT          CHAR(1) NOT NULL DEFAULT '', 
        ORGAN_KODE            CHAR(1) NOT NULL DEFAULT '', 
        BGM_DATO              DATE NOT NULL, 
        BGM_FUNKTION          CHAR(2) NOT NULL DEFAULT '', 
        BGM_REFERENCE_NR      CHAR(35) NOT NULL DEFAULT '', 
        DTM_DATO              DATE NOT NULL, 
        SGF_REGRES_MODE       CHAR(1) NOT NULL DEFAULT '', 
        SGF_DYR_SKADE         CHAR(1) NOT NULL DEFAULT '', 
        SGF_REGRES_KODE       CHAR(3) NOT NULL DEFAULT '', 
        SGF_FORD_PCT          CHAR(3) NOT NULL DEFAULT '', 
        SGF_ERSTAT_PLIGT      CHAR(1) NOT NULL DEFAULT '', 
        SGF_ERSTAT_REGEL      CHAR(1) NOT NULL DEFAULT '', 
        NAD_UH_NA_01          CHAR(35) NOT NULL DEFAULT '', 
        NAD_UH_NA_02          CHAR(35) NOT NULL DEFAULT '', 
        NAD_UH_GADE_01        CHAR(35) NOT NULL DEFAULT '', 
        NAD_UH_GADE_02        CHAR(35) NOT NULL DEFAULT '', 
        NAD_UH_BY             CHAR(35) NOT NULL DEFAULT '', 
        NAD_IN_M_VIRNR        CHAR(17) NOT NULL DEFAULT '', 
        RFF_IN11_M_TYPE       CHAR(3) NOT NULL DEFAULT '', 
        RFF_IN11_M_NR         CHAR(35) NOT NULL DEFAULT '', 
        RFF_IN12_M_TYPE       CHAR(3) NOT NULL DEFAULT '', 
        RFF_IN12_M_NR         CHAR(35) NOT NULL DEFAULT '', 
        RFF_IN13_M_TYPE       CHAR(3) NOT NULL DEFAULT '', 
        RFF_IN13_M_NR         CHAR(35) NOT NULL DEFAULT '', 
        RFF_IN14_M_TYPE       CHAR(3) NOT NULL DEFAULT '', 
        RFF_IN14_M_NR         CHAR(35) NOT NULL DEFAULT '', 
        NAD_BN_M_NAVN_01      CHAR(35) NOT NULL DEFAULT '', 
        NAD_BN_M_NAVN_02      CHAR(35) NOT NULL DEFAULT '', 
        NAD_BN_M_GADE01       CHAR(35) NOT NULL DEFAULT '', 
        NAD_BN_M_GADE02       CHAR(35) NOT NULL DEFAULT '', 
        NAD_BN_M_BY           CHAR(35) NOT NULL DEFAULT '', 
        NAD_BN_M_POSTNR       CHAR(7) NOT NULL DEFAULT '', 
        RFF_BN11_M_TYPE       CHAR(3) NOT NULL DEFAULT '', 
        RFF_BN11_M_NR         CHAR(35) NOT NULL DEFAULT '', 
        RFF_BN12_M_TYPE       CHAR(3) NOT NULL DEFAULT '', 
        RFF_BN12_M_NR         CHAR(35) NOT NULL DEFAULT '', 
        RFF_BN13_M_TYPE       CHAR(3) NOT NULL DEFAULT '', 
        RFF_BN13_M_NR         CHAR(35) NOT NULL DEFAULT '', 
        RFF_BN14_M_TYPE       CHAR(3) NOT NULL DEFAULT '', 
        RFF_BN14_M_NR         CHAR(35) NOT NULL DEFAULT '', 
        ITB_M_REGNR           CHAR(35) NOT NULL DEFAULT '', 
        NAD_IN_A_VIRNR        CHAR(17) NOT NULL DEFAULT '', 
        CTA_A_AFD_MEDARB      CHAR(35) NOT NULL DEFAULT '', 
        CTA_A_KONTAKT_NR      CHAR(25) NOT NULL DEFAULT '', 
        CTA_A_KONTAKT_TYPE    CHAR(3) NOT NULL DEFAULT '', 
        RFF_IN21_A_TYPE       CHAR(3) NOT NULL DEFAULT '', 
        RFF_IN21_A_NR         CHAR(35) NOT NULL DEFAULT '', 
        RFF_IN22_A_TYPE       CHAR(3) NOT NULL DEFAULT '', 
        RFF_IN22_A_NR         CHAR(35) NOT NULL DEFAULT '', 
        RFF_IN23_A_TYPE       CHAR(3) NOT NULL DEFAULT '', 
        RFF_IN23_A_NR         CHAR(35) NOT NULL DEFAULT '', 
        RFF_IN24_A_TYPE       CHAR(3) NOT NULL DEFAULT '', 
        RFF_IN24_A_NR         CHAR(35) NOT NULL DEFAULT '', 
        NAD_BN_A_NAVN_01      CHAR(35) NOT NULL DEFAULT '', 
        NAD_BN_A_NAVN_02      CHAR(35) NOT NULL DEFAULT '', 
        NAD_BN_A_GADE01       CHAR(35) NOT NULL DEFAULT '', 
        NAD_BN_A_GADE02       CHAR(35) NOT NULL DEFAULT '', 
        NAD_BN_A_BY           CHAR(35) NOT NULL DEFAULT '', 
        NAD_BN_A_POSTNR       CHAR(7) NOT NULL DEFAULT '', 
        RFF_BN21_A_TYPE       CHAR(3) NOT NULL DEFAULT '', 
        RFF_BN21_A_NR         CHAR(35) NOT NULL DEFAULT '', 
        RFF_BN22_A_TYPE       CHAR(3) NOT NULL DEFAULT '', 
        RFF_BN22_A_NR         CHAR(35) NOT NULL DEFAULT '', 
        RFF_BN23_A_TYPE       CHAR(3) NOT NULL DEFAULT '', 
        RFF_BN23_A_NR         CHAR(35) NOT NULL DEFAULT '', 
        RFF_BN24_A_TYPE       CHAR(3) NOT NULL DEFAULT '', 
        RFF_BN24_A_NR         CHAR(35) NOT NULL DEFAULT '', 
        SKZ_01_A_KODE         CHAR(3) NOT NULL DEFAULT '', 
        SKZ_02_A_KODE         CHAR(3) NOT NULL DEFAULT '', 
        SKZ_03_A_KODE         CHAR(3) NOT NULL DEFAULT '', 
        SKZ_04_A_KODE         CHAR(3) NOT NULL DEFAULT '', 
        SKZ_05_A_KODE         CHAR(3) NOT NULL DEFAULT '', 
        SKZ_06_A_KODE         CHAR(3) NOT NULL DEFAULT '', 
        SKZ_07_A_KODE         CHAR(3) NOT NULL DEFAULT '', 
        SKZ_08_A_KODE         CHAR(3) NOT NULL DEFAULT '', 
        SKZ_09_A_KODE         CHAR(3) NOT NULL DEFAULT '', 
        SKZ_10_A_KODE         CHAR(3) NOT NULL DEFAULT '', 
        ITB_A_REGNR           CHAR(35) NOT NULL DEFAULT '', 
        MPS_A_MOMS_PCT        CHAR(3) NOT NULL DEFAULT '', 
        MPS_A_PERS_KRAV       CHAR(1) NOT NULL DEFAULT '', 
        VAL_1_A_TYPE          CHAR(3) NOT NULL DEFAULT '', 
        VAL_1_A_BELOEB        DECIMAL(15) NOT NULL DEFAULT 0, 
        VAL_1_A_MOENT         CHAR(3) NOT NULL DEFAULT '', 
        VAL_2_A_TYPE          CHAR(3) NOT NULL DEFAULT '', 
        VAL_2_A_BELOEB        DECIMAL(15) NOT NULL DEFAULT 0, 
        VAL_2_A_MOENT         CHAR(3) NOT NULL DEFAULT '', 
        VAL_3_A_TYPE          CHAR(3) NOT NULL DEFAULT '', 
        VAL_3_A_BELOEB        DECIMAL(15) NOT NULL DEFAULT 0, 
        VAL_3_A_MOENT         CHAR(3) NOT NULL DEFAULT '', 
        VAL_4_A_TYPE          CHAR(3) NOT NULL DEFAULT '', 
        VAL_4_A_BELOEB        DECIMAL(15) NOT NULL DEFAULT 0, 
        VAL_4_A_MOENT         CHAR(3) NOT NULL DEFAULT '', 
        VAL_5_A_TYPE          CHAR(3) NOT NULL DEFAULT '', 
        VAL_5_A_BELOEB        DECIMAL(15) NOT NULL DEFAULT 0, 
        VAL_5_A_MOENT         CHAR(3) NOT NULL DEFAULT '', 
        DOC_1_A_NAME          CHAR(3) NOT NULL DEFAULT '', 
        DOC_1_A_KOMM_TYPE     CHAR(3) NOT NULL DEFAULT '', 
        DOC_2_A_NAME          CHAR(3) NOT NULL DEFAULT '', 
        DOC_2_A_KOMM_TYPE     CHAR(3) NOT NULL DEFAULT '', 
        DOC_3_A_NAME          CHAR(3) NOT NULL DEFAULT '', 
        DOC_3_A_KOMM_TYPE     CHAR(3) NOT NULL DEFAULT '', 
        DOC_4_A_NAME          CHAR(3) NOT NULL DEFAULT '', 
        DOC_4_A_KOMM_TYPE     CHAR(3) NOT NULL DEFAULT '', 
        DOC_5_A_NAME          CHAR(3) NOT NULL DEFAULT '', 
        DOC_5_A_KOMM_TYPE     CHAR(3) NOT NULL DEFAULT '', 
        DOC_6_A_NAME          CHAR(3) NOT NULL DEFAULT '', 
        DOC_6_A_KOMM_TYPE     CHAR(3) NOT NULL DEFAULT '', 
        DOC_7_A_NAME          CHAR(3) NOT NULL DEFAULT '', 
        DOC_7_A_KOMM_TYPE     CHAR(3) NOT NULL DEFAULT '', 
        DOC_8_A_NAME          CHAR(3) NOT NULL DEFAULT '', 
        DOC_8_A_KOMM_TYPE     CHAR(3) NOT NULL DEFAULT '', 
        FTX_1_A_TXT_01        CHAR(70) NOT NULL DEFAULT '', 
        FTX_1_A_TXT_02        CHAR(70) NOT NULL DEFAULT '', 
        FTX_1_A_TXT_03        CHAR(70) NOT NULL DEFAULT '', 
        FTX_1_A_TXT_04        CHAR(70) NOT NULL DEFAULT '', 
        FTX_1_A_TXT_05        CHAR(70) NOT NULL DEFAULT '', 
        FTX_2_A_TXT_01        CHAR(70) NOT NULL DEFAULT '', 
        FTX_2_A_TXT_02        CHAR(70) NOT NULL DEFAULT '', 
        FTX_2_A_TXT_03        CHAR(70) NOT NULL DEFAULT '', 
        FTX_2_A_TXT_04        CHAR(70) NOT NULL DEFAULT '', 
        FTX_2_A_TXT_05        CHAR(70) NOT NULL DEFAULT ''
);



   

CREATE TABLE BI_EKSP_LOG
(
        EKSP_LOG_ID           INTEGER NOT NULL, 
        TMSTMP_START          TIMESTAMP NOT NULL, 
        TMSTMP_SLUT           TIMESTAMP NOT NULL, 
        TMSTMP_CL_START       TIMESTAMP NOT NULL, 
        TMSTMP_CL_SLUT        TIMESTAMP NOT NULL, 
        EKSP_TEKST            CHAR(30) NOT NULL, 
        JOB_STATUS            CHAR(20) NOT NULL, 
        ANTAL_BEHANDL         INTEGER NOT NULL, 
        SUM_BELOEB            DECIMAL(15, 2) NOT NULL
);


   

CREATE TABLE BI_EPAYMNT
(
        EPAYMNT_ID            INTEGER NOT NULL, 
        EKSP_LOG_ID_1         INTEGER NOT NULL, 
        EKSP_LOG_ID_2         INTEGER NOT NULL, 
        TMSTMP_OPR            TIMESTAMP NOT NULL, 
        TMSTMP_CLIENT         TIMESTAMP NOT NULL, 
        STAT                  CHAR(01) NOT NULL, 
        TMSTMP_COMMIT         TIMESTAMP NOT NULL, 
        TRSP_ID               CHAR(16) NOT NULL, 
        SOURCE_SYSTEM         CHAR(03) NOT NULL, 
        BETAL_ID              CHAR(15) NOT NULL, 
        USER                  CHAR(03) NOT NULL, 
        TRDATO                DATE NOT NULL, 
        DISPDATO              DATE NOT NULL, 
        KORTART               CHAR(02) NOT NULL, 
        BETALID               CHAR(16) NOT NULL, 
        BANKREG               CHAR(04) NOT NULL, 
        KONTONR               CHAR(10) NOT NULL, 
        BELOEB                DECIMAL(15, 2) NOT NULL, 
        TEKST                 CHAR(35) NOT NULL, 
        SAPNAVN               CHAR(35) NOT NULL, 
        GADE                  CHAR(35) NOT NULL, 
        UADR                  CHAR(32) NOT NULL, 
        POSTNR                CHAR(04) NOT NULL, 
        BYNAVN                CHAR(32) NOT NULL, 
        VALUTA                CHAR(03) NOT NULL, 
        SELSKAB               CHAR(04) NOT NULL, 
        KONTO                 CHAR(06) NOT NULL, 
        CENTER                CHAR(04) NOT NULL
);


   

CREATE TABLE BI_INT_DOEDSFA
(
        BI_INT_DOEDSF         INTEGER NOT NULL, 
        EKSP_LOG_ID_1         INTEGER NOT NULL, 
        EKSP_LOG_ID_2         INTEGER NOT NULL, 
        TMSTMP_OPR            TIMESTAMP NOT NULL, 
        TMSTMP_CLIENT         TIMESTAMP NOT NULL, 
        STAT                  CHAR(01) NOT NULL, 
        TMSTMP_COMMIT         TIMESTAMP NOT NULL, 
        INTERR_ID             CHAR(07) NOT NULL, 
        STATUSDATO            CHAR(08) NOT NULL, 
        INT_STATUS            CHAR(02) NOT NULL, 
        AENDRINGSDATO         CHAR(08) NOT NULL
);




   

CREATE TABLE BI_INT_SAMLAEG
(
        BI_INT_SAMLAE         INTEGER NOT NULL, 
        EKSP_LOG_ID_1         INTEGER NOT NULL, 
        EKSP_LOG_ID_2         INTEGER NOT NULL, 
        TMSTMP_OPR            TIMESTAMP NOT NULL, 
        TMSTMP_CLIENT         TIMESTAMP NOT NULL, 
        STAT                  CHAR(01) NOT NULL, 
        TMSTMP_COMMIT         TIMESTAMP NOT NULL, 
        INTERR_ID_FRA         CHAR(07) NOT NULL, 
        INTERR_ID_TIL         CHAR(07) NOT NULL
);





   

CREATE TABLE BI_NEMKONTO_PAYMNT
(
        NEMKONTO_PAYMNT_ID    INTEGER NOT NULL, 
        EKSP_LOG_ID_1         INTEGER NOT NULL, 
        EKSP_LOG_ID_2         INTEGER NOT NULL, 
        TMSTMP_OPR            TIMESTAMP NOT NULL, 
        TMSTMP_CLIENT         TIMESTAMP NOT NULL, 
        STAT                  CHAR(1) NOT NULL DEFAULT 'N', 
        TMSTMP_COMPLETED      TIMESTAMP NOT NULL, 
        TRSP_ID               CHAR(16) NOT NULL, 
        SOURCE_SYSTEM         CHAR(3) NOT NULL, 
        N_CLAIM_NUMBER        CHAR(9) NOT NULL, 
        USER                  CHAR(3) NOT NULL, 
        TRDATO                DATE NOT NULL, 
        DISPDATO              DATE NOT NULL, 
        BELOEB                DECIMAL(15) NOT NULL, 
        TEKST                 CHAR(35) NOT NULL, 
        NAVN                  CHAR(35) NOT NULL, 
        ADRESSE               CHAR(35) NOT NULL, 
        UADR                  CHAR(25) NOT NULL, 
        POSTNR                CHAR(10) NOT NULL, 
        BYNAVN                CHAR(32) NOT NULL, 
        VALUTA                CHAR(3) NOT NULL, 
        SELSKAB_NAVN          CHAR(20) NOT NULL, 
        N_CPR_CVR             CHAR(10) NOT NULL
);



   

CREATE TABLE BI_REGRES_SELSKAB
(
        SELSKABSKODE          CHAR(3) NOT NULL DEFAULT '', 
        SELSKABSNAVN          CHAR(20) NOT NULL DEFAULT '', 
        SELSKAB_INTERR_ID     CHAR(7) NOT NULL DEFAULT '', 
        VIRNR                 CHAR(6) NOT NULL DEFAULT '', 
        DN_ADR                CHAR(15) NOT NULL DEFAULT '', 
        DN_ADR_TEST           CHAR(15) NOT NULL DEFAULT '', 
        STARTDATO_AFTALE      CHAR(10) NOT NULL DEFAULT '', 
        SLUTDATO_AFTALE       CHAR(10) NOT NULL DEFAULT '', 
        STARTDATO_EDI         CHAR(10) NOT NULL DEFAULT '', 
        SLUTDATO_EDI          CHAR(10) NOT NULL DEFAULT '', 
        STARTDATO_CLEARING    CHAR(10) NOT NULL DEFAULT '', 
        SLUTDATO_CLEARING     CHAR(10) NOT NULL DEFAULT ''
);



   

CREATE TABLE BI_TOLD_SKAT
(
        TOLD_SKAT_ID          INTEGER NOT NULL, 
        EKSP_LOG_ID_1         INTEGER NOT NULL, 
        EKSP_LOG_ID_2         INTEGER NOT NULL, 
        TMSTMP_OPR            TIMESTAMP NOT NULL, 
        TMSTMP_CLIENT         TIMESTAMP NOT NULL, 
        STAT                  CHAR(01) NOT NULL, 
        TMSTMP_COMMIT         TIMESTAMP NOT NULL, 
        TRSP_ID               CHAR(16) NOT NULL, 
        SOURCE_SYSTEM         CHAR(01) NOT NULL, 
        SECPRNR               CHAR(10) NOT NULL, 
        REFNR                 CHAR(13) NOT NULL, 
        UDBDATO               DATE NOT NULL, 
        UDBNR                 CHAR(03) NOT NULL, 
        BELOEB                DECIMAL(13, 2) NOT NULL, 
        STYPE                 CHAR(01) NOT NULL, 
        KUNDENR               CHAR(07) NOT NULL, 
        AFDKD                 CHAR(02) NOT NULL, 
        ORGKD                 CHAR(02) NOT NULL, 
        ASKAT                 DECIMAL(9) NOT NULL, 
        SELSKAB               CHAR(04) NOT NULL, 
        CVR_SEL               CHAR(08) NOT NULL, 
        SKTYPE                CHAR(02) NOT NULL
);

   

CREATE TABLE BOOKKEEPING
(
        N_BOOKKEEPING_ID      CHAR(16) NOT NULL, 
        N_FIN_TX_GRP_ID       CHAR(16) NOT NULL, 
        D_SERVICE_DT          TIMESTAMP NOT NULL, 
        N_POLICY              CHAR(10) NOT NULL, 
        C_ORGAN_CODE          CHAR(5) NOT NULL, 
        A_PAYMENT_AMT         DECIMAL(19, 6), 
        C_PAYMENT_UOM         CHAR(5) NOT NULL, 
        D_POSTING_DT          TIMESTAMP NOT NULL, 
        C_POSTING_CODE        CHAR(5) NOT NULL, 
        C_SYSTEM_CODE         CHAR(2) NOT NULL, 
        C_SOFL_CODE           CHAR(8) NOT NULL, 
        A_RECOURSE_AMT        DECIMAL(19, 6), 
        C_RECOURSE_UOM        CHAR(5) NOT NULL, 
        N_ACCOUNT_NUMBER      CHAR(6) NOT NULL, 
        N_SAP_CENTER_CODE     CHAR(4) NOT NULL, 
        C_BRAND               CHAR(5) NOT NULL, 
        A_TAX_AMT             DECIMAL(19, 6), 
        C_TAX_UOM             CHAR(5) NOT NULL, 
        C_CHK_SYST_CODE       CHAR(5) NOT NULL, 
        T_POSTING_TEXT        CHAR(40) NOT NULL, 
        C_PRIMO_MARKING       CHAR(2) NOT NULL, 
        C_CLAIM_FORM          CHAR(5) NOT NULL, 
        C_CLAIM_TYPE          CHAR(5) NOT NULL, 
        T_CLAIM_YEAR          CHAR(4) NOT NULL, 
        N_CLAIM_NUMBER        CHAR(9) NOT NULL, 
        D_PROCESSED_TS        TIMESTAMP NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_BOOKKEEPING_TYPE    CHAR(5) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        N_FIN_DTL_ID          CHAR(16) NOT NULL, 
        N_LAST_MAN_DEPT_ID    CHAR(4) NOT NULL, 
        N_LAST_WORKDEPT_ID    CHAR(5) NOT NULL, 
        N_CPR_CVR             CHAR(10) NOT NULL DEFAULT '', 
        N_CUSTOMER_NUMBER     CHAR(7) NOT NULL DEFAULT ''
);



   

CREATE TABLE CCS_TASK
(
        N_TASK_ID             CHAR(16) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        N_TASK_TEMPL_ID       CHAR(16) NOT NULL, 
        N_PRFMR_ID            CHAR(16) NOT NULL, 
        N_REPEAT_RULE_ID      CHAR(16) NOT NULL, 
        N_ASSN_ID             CHAR(16) NOT NULL, 
        C_ASSN_TY             CHAR(5) NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        N_TSK_ENABLER_ID      VARCHAR(254) NOT NULL, 
        N_TRGT_ID             CHAR(16) NOT NULL, 
        M_TASK                CHAR(50) NOT NULL, 
        D_TASK_CREA           TIMESTAMP NOT NULL, 
        D_TASK_DUE            TIMESTAMP NOT NULL, 
        C_TASK_STS            CHAR(5) NOT NULL, 
        C_ACCESS_IND          CHAR(1) NOT NULL, 
        N_TASK_AUTHOR         CHAR(16) NOT NULL, 
        D_TASK_DSPL           TIMESTAMP NOT NULL, 
        D_TASK_CMPL           TIMESTAMP NOT NULL, 
        D_TASK_RASGN          TIMESTAMP NOT NULL, 
        N_RASGN_BY_OE         CHAR(16) NOT NULL, 
        C_SOURCE              CHAR(5) NOT NULL, 
        C_TASK_TY             CHAR(5) NOT NULL, 
        C_MAND_IND            CHAR(1) NOT NULL, 
        C_AUTOM_IND           CHAR(1) NOT NULL, 
        C_RMN_OPN_IND         CHAR(1) NOT NULL, 
        C_ERR_IND             CHAR(1) NOT NULL, 
        C_SEC_TASK_STS        CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        T_TASK_DESC           VARCHAR(254) NOT NULL, 
        T_REASON              VARCHAR(254) NOT NULL, 
        N_TRG_INS_INVL_ID     CHAR(16) NOT NULL, 
        N_CLMT_INS_INVL_ID    CHAR(16) NOT NULL, 
        C_PRIORITY            CHAR(5) NOT NULL, 
        N_ORIGINAL_OE_ID      CHAR(16) NOT NULL
);


   

CREATE TABLE CHECK_PYMNT
(
        N_CHK_PYMNT_ID        CHAR(16) NOT NULL, 
        M_MAIL_TO_NAME        VARCHAR(50) NOT NULL, 
        M_PAYEE_NAME          VARCHAR(50) NOT NULL, 
        M_BHALF_NAME          VARCHAR(50) NOT NULL, 
        M_STREET_NAME         CHAR(32) NOT NULL, 
        M_CITY_NAME           CHAR(32) NOT NULL, 
        C_COUNTRY             CHAR(5) NOT NULL, 
        M_FLOOR               CHAR(12) NOT NULL, 
        M_STREET_NO           CHAR(9) NOT NULL, 
        C_RECON_STAT          CHAR(5) NOT NULL, 
        N_PYMNT_NBR           CHAR(13) NOT NULL, 
        C_PYMNT_STAT          CHAR(5) NOT NULL, 
        C_PRINTER_LOC         CHAR(4) NOT NULL, 
        N_CHK_FORM_NBR        CHAR(10) NOT NULL, 
        T_IN_SETT_OF          CHAR(254) NOT NULL, 
        C_PYMNT_GRP_NBR       CHAR(16) NOT NULL, 
        M_SUB_CITY_NAME       CHAR(32) NOT NULL, 
        C_POSTAL_CODE         CHAR(9) NOT NULL, 
        N_PYMNT_IDENT         CHAR(13) NOT NULL, 
        D_CHECKNUMBER_RCVD    TIMESTAMP NOT NULL, 
        M_CONAME              CHAR(32) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        D_BATCHJOBSTART_TS    TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        N_PAYEE_CPR_CVR       CHAR(10) NOT NULL DEFAULT ''
);



   

CREATE TABLE CITATION
(
        N_CITATION_ID         CHAR(16) NOT NULL, 
        N_INS_INVL_ID         CHAR(16) NOT NULL, 
        C_CITATION            CHAR(5), 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);


   

CREATE TABLE CLAIM
(
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        N_LOSS_ID             CHAR(16) NOT NULL, 
        N_POLICY_ID           CHAR(16) NOT NULL, 
        C_CLAIM_STATUS        CHAR(5) NOT NULL, 
        N_POLICY              CHAR(10) NOT NULL, 
        C_SENSITIVITY         CHAR(5) NOT NULL, 
        C_LOB                 CHAR(5) NOT NULL, 
        C_CAT_SEVERITY        CHAR(5) NOT NULL, 
        C_RECOVERY_STATUS     CHAR(5) NOT NULL, 
        C_LOB_CTGY            CHAR(5) NOT NULL, 
        C_CLAIM_FILE_TYPE     CHAR(5) NOT NULL, 
        N_POLICY_OCC          CHAR(6) NOT NULL, 
        N_CLAIM_NUMBER        CHAR(9) NOT NULL, 
        D_PHYS_FILE_DSTRY     TIMESTAMP NOT NULL, 
        D_PHYS_FILE_CLOSE     TIMESTAMP NOT NULL, 
        C_PHYS_FILE_ARCHV     CHAR(1) NOT NULL, 
        N_INTRNTL_CLM_NBR     CHAR(9) NOT NULL, 
        N_PHYS_FILE_OFC       CHAR(16) NOT NULL, 
        Q_PHYS_ARCHV_VOL      INTEGER, 
        D_CLAIM_ENTERED       TIMESTAMP NOT NULL, 
        N_ENTERED_BY          CHAR(16) NOT NULL, 
        C_UNCODED_RSN         CHAR(1) NOT NULL, 
        C_COVERAGE_CTGRY      CHAR(5) NOT NULL, 
        D_CLOSED              TIMESTAMP NOT NULL, 
        D_REOPEN              TIMESTAMP NOT NULL, 
        C_COMPLEXITY          CHAR(5) NOT NULL, 
        C_REG_STATE           CHAR(5) NOT NULL, 
        C_REG_COUNTRY         CHAR(5) NOT NULL, 
        C_AIA_CODE            CHAR(1) NOT NULL, 
        T_RELATED_CLAIMS      CHAR(254) NOT NULL, 
        D_ARCHIVED            TIMESTAMP NOT NULL, 
        C_CMPLX_OVRD_IND      CHAR(1) NOT NULL, 
        T_AIA_CODE_DESC       CHAR(50) NOT NULL, 
        C_REG_COUNTY          CHAR(5) NOT NULL, 
        C_COMPANY             CHAR(5) NOT NULL, 
        C_NEG_RULE            CHAR(3) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        C_ACCTLOC_VAL_IND     CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_INPUT_TYP           CHAR(5) NOT NULL, 
        C_SUIT_FILED_IND      CHAR(1) NOT NULL, 
        C_CLM_TOT_DMGE_RNG    CHAR(5) NOT NULL, 
        T_CLM_ACCTLOC_DESC    CHAR(100) NOT NULL, 
        C_CLM_ACCT_LOC        CHAR(9) NOT NULL, 
        C_CLM_FLD_CARRIER     CHAR(3) NOT NULL, 
        D_CLM_FLD_CARRIER     TIMESTAMP NOT NULL, 
        T_FSTRK_DESC          CHAR(100) NOT NULL, 
        C_FSTRK_PTNTL_IND     CHAR(1) NOT NULL, 
        C_CLM_ESC_IND         CHAR(1) NOT NULL, 
        T_INDIV_RISK_EVAL     VARCHAR(525) NOT NULL, 
        D_INSRD_NOTIFY_DT     TIMESTAMP NOT NULL, 
        C_PUB_ADJ_INV_IND     CHAR(1) NOT NULL, 
        C_CAT_IND             CHAR(1) NOT NULL, 
        C_RCD_ONLY_IND        CHAR(1) NOT NULL, 
        T_CLM_ESC_RSN         CHAR(100) NOT NULL, 
        C_STOP_FSTRK_IND      CHAR(1) NOT NULL, 
        C_INDIV_RISK_EVAL     CHAR(5) NOT NULL, 
        C_COV_TYP             CHAR(5) NOT NULL, 
        D_PHYS_FILE_PURGE     TIMESTAMP NOT NULL, 
        C_EDIT_PASSED_IND     CHAR(1) NOT NULL, 
        D_CLMGRP_PUSH_TS      TIMESTAMP NOT NULL, 
        N_SCHED_INDMNTY_WK    INTEGER, 
        N_TEMP_BENEFIT_WK     INTEGER, 
        C_FIN_SYSTEM          CHAR(5) NOT NULL, 
        T_PHYS_FILE_LOC       VARCHAR(100) NOT NULL, 
        C_NEEDS_WORK_IND      CHAR(1) NOT NULL, 
        C_MAN_FORCED_IND      CHAR(1) NOT NULL, 
        C_CLAIM_PRIO          CHAR(5) NOT NULL, 
        D_LAST_MAN_UPDT       TIMESTAMP NOT NULL, 
        N_LAST_MAN_OE_ID      CHAR(16) NOT NULL, 
        N_LAST_MAN_DEPT_ID    CHAR(4) NOT NULL, 
        C_PHYS_FILE_RSN       CHAR(5) NOT NULL, 
        C_BIG_LOSS_IND        CHAR(1) NOT NULL, 
        C_VIEW_ACCESS_IND     CHAR(1) NOT NULL, 
        C_CNVRTD_CLM_IND      CHAR(1) NOT NULL, 
        C_CLM_TO_SUIT_IND     CHAR(1) NOT NULL, 
        N_ENTRD_BY_DEPT_ID    CHAR(4) NOT NULL, 
        C_FNOL_CLAIM_CTGY     CHAR(5) NOT NULL, 
        N_ENTRD_WORKDPT_ID    CHAR(5) NOT NULL, 
        N_LAST_WORKDEPT_ID    CHAR(5) NOT NULL, 
        C_CLAIM_DED_RULE      CHAR(5) NOT NULL DEFAULT 'DRHDA', 
        T_RELATED_CLAIM_NO    CHAR(13) NOT NULL DEFAULT '', 
        C_PRORATA_STATUS      CHAR(5) NOT NULL DEFAULT '', 
        A_PRORATA_PCT         NUMERIC(5, 2) NOT NULL DEFAULT 0, 
        T_NO_PRORATA_REASN    VARCHAR(50) NOT NULL DEFAULT '', 
        C_PRORATA_SOURCE      CHAR(5) NOT NULL DEFAULT '', 
        N_MAIN_CUSTOMER_NO    CHAR(7) NOT NULL DEFAULT ''
);




   

CREATE TABLE CLAIM_GROUP_XREF
(
        N_CLMGRP_XREF_ID      CHAR(16) NOT NULL, 
        N_CLMGRP_ID           CHAR(16) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);




   

CREATE TABLE CLAIM_GRP
(
        N_CLMGRP_ID           CHAR(16) NOT NULL, 
        C_GRP_TYP             CHAR(5) NOT NULL, 
        C_GRP                 CHAR(2) NOT NULL, 
        C_INDSTRY_ASGN_IND    CHAR(1) NOT NULL, 
        M_NAME                VARCHAR(150) NOT NULL, 
        D_START_DT            TIMESTAMP NOT NULL, 
        D_END_DT              TIMESTAMP NOT NULL, 
        C_INT_EXT_CAT         CHAR(5) NOT NULL, 
        T_CLMGRP_DESC         CHAR(254) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        M_CLMGRP_NAME_UC      VARCHAR(150) NOT NULL, 
        C_SHARED_DED_RULE     CHAR(5) NOT NULL DEFAULT 'DRHDA', 
        N_POLICY              CHAR(10) NOT NULL DEFAULT '', 
        A_DEDUCT_TOTAL_AMT    NUMERIC(19, 6) NOT NULL DEFAULT 0, 
        A_DEDUCT_TOTAL_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_DEDUCT_OUTSD_AMT    NUMERIC(19, 6) NOT NULL DEFAULT 0, 
        A_DEDUCT_OUTSD_UOM    CHAR(5) NOT NULL DEFAULT 'DKK'
);


   

CREATE TABLE CLAIM_GRP_LOB
(
        N_CLM_GRP_LOB         CHAR(16) NOT NULL, 
        N_CLMGRP_ID           CHAR(16) NOT NULL, 
        C_LOB_CTGY            CHAR(5) NOT NULL, 
        C_LOB                 CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);




CREATE TABLE CLAIM_GRP_LOC
(
        N_CLM_GRP_LOC_ID      CHAR(16) NOT NULL, 
        N_CLMGRP_ID           CHAR(16) NOT NULL, 
        C_REGION              CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_POSTAL_CODE         CHAR(5) NOT NULL, 
        C_CLMGRP_SUB_COL      CHAR(5) NOT NULL
);



CREATE UNIQUE INDEX XTP22701 ON CLAIM_GRP_LOC
(
        N_CLM_GRP_LOC_ID      ASC
);



CREATE INDEX XTP22705 ON CLAIM_GRP_LOC
(
        C_POSTAL_CODE         ASC
);



CREATE INDEX XTP22706 ON CLAIM_GRP_LOC
(
        C_REGION              ASC
);



CREATE INDEX XTP22702 ON CLAIM_GRP_LOC
(
        N_CLMGRP_ID           ASC, 
        C_RCD_DEL             ASC
);



ALTER TABLE CLAIM_GRP_LOC
ADD CONSTRAINT XTP22701  PRIMARY KEY (N_CLM_GRP_LOC_ID);



ALTER TABLE CLAIM_GRP_LOC
ADD CONSTRAINT RTP22403  FOREIGN KEY (N_CLMGRP_ID)
                REFERENCES CLAIM_GRP  (N_CLMGRP_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_CLAIM AFTER INSERT ON CLAIM_GRP_LOC
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE CLAIM_GRP_LOC
      SET
        CLAIM_GRP_LOC.N_CLMGRP_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIM_GRP
            WHERE
              new.N_CLMGRP_ID = CLAIM_GRP.N_CLMGRP_ID
        )
 ;


   

CREATE TABLE CLAIM_GRP_LOSS_TYP
(
        N_CLM_GRP_COL         CHAR(16) NOT NULL, 
        N_CLMGRP_ID           CHAR(16) NOT NULL, 
        C_CLMGRP_LOSS_TYPE    CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP22501 ON CLAIM_GRP_LOSS_TYP
(
        N_CLM_GRP_COL         ASC
);



CREATE INDEX XTP22502 ON CLAIM_GRP_LOSS_TYP
(
        N_CLMGRP_ID           ASC, 
        C_RCD_DEL             ASC
);



ALTER TABLE CLAIM_GRP_LOSS_TYP
ADD CONSTRAINT XTP22501  PRIMARY KEY (N_CLM_GRP_COL);



ALTER TABLE CLAIM_GRP_LOSS_TYP
ADD CONSTRAINT RTP22402  FOREIGN KEY (N_CLMGRP_ID)
                REFERENCES CLAIM_GRP  (N_CLMGRP_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_CLAIM AFTER INSERT ON CLAIM_GRP_LOSS_TYP
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM CLAIM_GRP WHERE new.N_CLMGRP_ID = CLAIM_GRP.N_CLMGRP_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert CLAIM_GRP_LOSS_TYP because CLAIM_GRP does not
exist.');
        END
 ;

CREATE TRIGGER tU_CLAIM AFTER UPDATE ON CLAIM_GRP_LOSS_TYP
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM CLAIM_GRP WHERE new.N_CLMGRP_ID = CLAIM_GRP.N_CLMGRP_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update CLAIM_GRP_LOSS_TYP because CLAIM_GRP does not
exist.');
        END
 ;


   

CREATE TABLE CLAIM_LDGR
(
        N_CLM_LDGR_ID         CHAR(16) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        C_BALANCE_OWNER       CHAR(5) NOT NULL, 
        C_BALANCE_TYP         CHAR(5) NOT NULL, 
        C_SRVC_CTGY_TYP       CHAR(5) NOT NULL, 
        C_SERVICE             CHAR(5) NOT NULL, 
        A_LEDGER              DECIMAL(19, 6), 
        C_CURRENCY_UOM        CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP22801 ON CLAIM_LDGR
(
        N_CLM_LDGR_ID         ASC
);



CREATE INDEX XTP22802 ON CLAIM_LDGR
(
        N_LINE_ID             ASC, 
        C_BALANCE_TYP         ASC, 
        C_RCD_DEL             ASC
);



CREATE INDEX XTP22805 ON CLAIM_LDGR
(
        N_LINE_ID             ASC, 
        C_RCD_DEL             ASC, 
        C_BALANCE_TYP         ASC, 
        A_LEDGER              ASC, 
        C_CURRENCY_UOM        ASC, 
        D_CREATE_TS           ASC
);



ALTER TABLE CLAIM_LDGR
ADD CONSTRAINT XTP22801  PRIMARY KEY (N_CLM_LDGR_ID);



ALTER TABLE CLAIM_LDGR
ADD CONSTRAINT RTP30005  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE CLAIM_LDGR
ADD CONSTRAINT RTP22202  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



ALTER TABLE JOURNAL_ENTRY
ADD CONSTRAINT RTP22801  FOREIGN KEY (N_CLM_LDGR_ID)
                REFERENCES CLAIM_LDGR  (N_CLM_LDGR_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_CLAIM AFTER INSERT ON CLAIM_LDGR
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE CLAIM_LDGR
      SET
        CLAIM_LDGR.N_CLAIM_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIM
            WHERE
              new.N_CLAIM_ID = CLAIM.N_CLAIM_ID
        )
 ;

CREATE TRIGGER tI_CLAI2 AFTER INSERT ON CLAIM_LDGR
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE CLAIM_LDGR
      SET
        CLAIM_LDGR.N_LINE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM LINE
            WHERE
              new.N_LINE_ID = LINE.N_LINE_ID
        )
 ;

CREATE TRIGGER tD_CLAIM AFTER DELETE ON CLAIM_LDGR
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM JOURNAL_ENTRY WHERE JOURNAL_ENTRY.N_CLM_LDGR_ID =
old.N_CLM_LDGR_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete CLAIM_LDGR because JOURNAL_ENTRY exists.');
        END
 ;

CREATE TRIGGER tU_CLAIM AFTER UPDATE ON CLAIM_LDGR
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM CLAIM_LDGR WHERE new.N_CLM_LDGR_ID <> old.N_CLM_LDGR_ID)) AND
     (0 < (SELECT count(*) FROM JOURNAL_ENTRY WHERE JOURNAL_ENTRY.N_CLM_LDGR_ID =
old.N_CLM_LDGR_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update CLAIM_LDGR because JOURNAL_ENTRY exists.');
        END
 ;


   

CREATE TABLE CLAIM_SEARCH
(
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        T_COMMENT_1           VARCHAR(256) NOT NULL DEFAULT '', 
        T_COMMENT_1_UC        VARCHAR(256) NOT NULL, 
        T_COMMENT_2           CHAR(80) NOT NULL, 
        T_COMMENT_2_UC        CHAR(80) NOT NULL, 
        T_PHYS_FILE_LOC       VARCHAR(100) NOT NULL, 
        T_PHYS_FILE_LOC_UC    VARCHAR(100), 
        N_POLICY              CHAR(10) NOT NULL, 
        N_POLICY_OCC          CHAR(6) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP23001 ON CLAIM_SEARCH
(
        N_CLAIM_ID            ASC
);



CREATE INDEX XTP23004 ON CLAIM_SEARCH
(
        N_POLICY              ASC, 
        N_POLICY_OCC          ASC
);



ALTER TABLE CLAIM_SEARCH
ADD CONSTRAINT XTP23001  PRIMARY KEY (N_CLAIM_ID);



ALTER TABLE CLAIM_SEARCH
ADD CONSTRAINT RTP22210  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_CLAIM AFTER INSERT ON CLAIM_SEARCH
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM CLAIM WHERE new.N_CLAIM_ID = CLAIM.N_CLAIM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert CLAIM_SEARCH because CLAIM does not exist.');
        END
 ;

CREATE TRIGGER tU_CLAIM AFTER UPDATE ON CLAIM_SEARCH
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM CLAIM WHERE new.N_CLAIM_ID = CLAIM.N_CLAIM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update CLAIM_SEARCH because CLAIM does not exist.');
        END
 ;


   

CREATE TABLE CLAIM_SEQUENCE_NBR
(
        N_YEAR                CHAR(2) NOT NULL, 
        N_SEQUENCE            INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP23101 ON CLAIM_SEQUENCE_NBR
(
        N_YEAR                ASC
);



ALTER TABLE CLAIM_SEQUENCE_NBR
ADD CONSTRAINT XTP23101  PRIMARY KEY (N_YEAR);



   

CREATE TABLE CLAIMANT_ROLE
(
        N_CLAIMANT_ROLE_ID    CHAR(16) NOT NULL, 
        C_COVERAGE_IND        CHAR(1) NOT NULL, 
        C_INJURED             CHAR(3) NOT NULL, 
        C_MARITAL_STATUS      CHAR(5) NOT NULL, 
        C_VARIOUS_IND         CHAR(1) NOT NULL, 
        N_LEG_CLAIMANT        CHAR(3) NOT NULL, 
        Q_DEPENDENTS          SMALLINT, 
        C_PRIM_INJURY         CHAR(5) NOT NULL, 
        C_FATAL_IND           CHAR(1) NOT NULL, 
        N_OCC_VEHICLE_ID      CHAR(16) NOT NULL, 
        C_BNFT_DENIED_IND     CHAR(1) NOT NULL, 
        D_DEATH_DT            TIMESTAMP NOT NULL, 
        C_INDEMNITY_IND       CHAR(1) NOT NULL, 
        C_SCENE_RMVL_IND      CHAR(1) NOT NULL, 
        C_SRGRY_IND           CHAR(1) NOT NULL, 
        D_CREATION            TIMESTAMP NOT NULL, 
        C_PD_DAY_INJ          CHAR(1) NOT NULL, 
        C_PD_DSBLTY           CHAR(1) NOT NULL, 
        C_DOUBT_CLM_IND       CHAR(1) NOT NULL, 
        T_DOUBT_CLM_DESC      CHAR(100) NOT NULL, 
        C_DANMARK             CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_CONSENT             CHAR(5) NOT NULL
);



CREATE UNIQUE INDEX XTP23201 ON CLAIMANT_ROLE
(
        N_CLAIMANT_ROLE_ID    ASC
);



ALTER TABLE CLAIMANT_ROLE
ADD CONSTRAINT XTP23201  PRIMARY KEY (N_CLAIMANT_ROLE_ID);



ALTER TABLE CLAIMANT_ROLE
ADD CONSTRAINT RTP28903  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES INVOLVEMENT_ROLE  (N_INVL_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE SICKNESS_BENEFIT
ADD CONSTRAINT RTP23211  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE ESTM_DISABILITY
ADD CONSTRAINT RTP23203  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE PERFORMER
ADD CONSTRAINT RTP23206  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE SET NULL;



ALTER TABLE LINE
ADD CONSTRAINT RTP23205  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE CLMNT_DTL
ADD CONSTRAINT RTP23201  FOREIGN KEY (N_CLMNT_DTL_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE RETURN_TO_WORK
ADD CONSTRAINT RTP23207  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE INJURY
ADD CONSTRAINT RTP23204  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE WC_CLMNT
ADD CONSTRAINT RTP23209  FOREIGN KEY (N_WC_CLMNT_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE WORK_RESTRICTION
ADD CONSTRAINT RTP23210  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE DISABILITY
ADD CONSTRAINT RTP23202  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE SET NULL;



ALTER TABLE TREATMENTS
ADD CONSTRAINT RTP23208  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE INJURY2
ADD CONSTRAINT RTP23212  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tD_CLAIM AFTER DELETE ON CLAIMANT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INJURY2 WHERE INJURY2.N_CLAIMANT_ROLE_ID =
old.N_CLAIMANT_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete CLAIMANT_ROLE because INJURY2 exists.');
        END
 ;

CREATE TRIGGER tD_CLAI2 AFTER DELETE ON CLAIMANT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM TREATMENTS WHERE TREATMENTS.N_CLAIMANT_ROLE_ID =
old.N_CLAIMANT_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete CLAIMANT_ROLE because TREATMENTS exists.');
        END
 ;

CREATE TRIGGER tD_CLAI3 AFTER DELETE ON CLAIMANT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
    UPDATE DISABILITY
      SET
        DISABILITY.N_CLAIMANT_ROLE_ID = NULL
      WHERE
        DISABILITY.N_CLAIMANT_ROLE_ID = old.N_CLAIMANT_ROLE_ID
 ;

CREATE TRIGGER tD_CLAI4 AFTER DELETE ON CLAIMANT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM WORK_RESTRICTION WHERE WORK_RESTRICTION.N_CLAIMANT_ROLE_ID =
old.N_CLAIMANT_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete CLAIMANT_ROLE because WORK_RESTRICTION exists.');
        END
 ;

CREATE TRIGGER tD_CLAI5 AFTER DELETE ON CLAIMANT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM WC_CLMNT WHERE WC_CLMNT.N_WC_CLMNT_ID = old.N_CLAIMANT_ROLE_ID))

        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete CLAIMANT_ROLE because WC_CLMNT exists.');
        END
 ;

CREATE TRIGGER tD_CLAI6 AFTER DELETE ON CLAIMANT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INJURY WHERE INJURY.N_CLAIMANT_ROLE_ID =
old.N_CLAIMANT_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete CLAIMANT_ROLE because INJURY exists.');
        END
 ;

CREATE TRIGGER tD_CLAI7 AFTER DELETE ON CLAIMANT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RETURN_TO_WORK WHERE RETURN_TO_WORK.N_CLAIMANT_ROLE_ID =
old.N_CLAIMANT_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete CLAIMANT_ROLE because RETURN_TO_WORK exists.');
        END
 ;

CREATE TRIGGER tD_CLAI8 AFTER DELETE ON CLAIMANT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CLMNT_DTL WHERE CLMNT_DTL.N_CLMNT_DTL_ID =
old.N_CLAIMANT_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete CLAIMANT_ROLE because CLMNT_DTL exists.');
        END
 ;

CREATE TRIGGER tD_CLAI9 AFTER DELETE ON CLAIMANT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LINE WHERE LINE.N_CLAIMANT_ROLE_ID = old.N_CLAIMANT_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete CLAIMANT_ROLE because LINE exists.');
        END
 ;

CREATE TRIGGER tD_CLA10 AFTER DELETE ON CLAIMANT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
    UPDATE PERFORMER
      SET
        PERFORMER.N_CLAIMANT_ROLE_ID = NULL
      WHERE
        PERFORMER.N_CLAIMANT_ROLE_ID = old.N_CLAIMANT_ROLE_ID
 ;

CREATE TRIGGER tD_CLA11 AFTER DELETE ON CLAIMANT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ESTM_DISABILITY WHERE ESTM_DISABILITY.N_CLAIMANT_ROLE_ID =
old.N_CLAIMANT_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete CLAIMANT_ROLE because ESTM_DISABILITY exists.');
        END
 ;

CREATE TRIGGER tD_CLA12 AFTER DELETE ON CLAIMANT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM SICKNESS_BENEFIT WHERE SICKNESS_BENEFIT.N_CLAIMANT_ROLE_ID =
old.N_CLAIMANT_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete CLAIMANT_ROLE because SICKNESS_BENEFIT exists.');
        END
 ;

CREATE TRIGGER tU_CLAIM AFTER UPDATE ON CLAIMANT_ROLE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_CLAIMANT_ROLE_ID <>
old.N_CLAIMANT_ROLE_ID)) AND
     (0 < (SELECT count(*) FROM TREATMENTS WHERE TREATMENTS.N_CLAIMANT_ROLE_ID =
old.N_CLAIMANT_ROLE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update CLAIMANT_ROLE because TREATMENTS exists.');
        END
 ;

CREATE TRIGGER tU_CLAI2 AFTER UPDATE ON CLAIMANT_ROLE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_CLAIMANT_ROLE_ID <>
old.N_CLAIMANT_ROLE_ID))
     UPDATE DISABILITY
       SET
         DISABILITY.N_CLAIMANT_ROLE_ID = NULL
       WHERE
         DISABILITY.N_CLAIMANT_ROLE_ID = old.N_CLAIMANT_ROLE_ID
 ;

CREATE TRIGGER tU_CLAI3 AFTER UPDATE ON CLAIMANT_ROLE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_CLAIMANT_ROLE_ID <>
old.N_CLAIMANT_ROLE_ID)) AND
     (0 < (SELECT count(*) FROM WORK_RESTRICTION WHERE WORK_RESTRICTION.N_CLAIMANT_ROLE_ID =
old.N_CLAIMANT_ROLE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update CLAIMANT_ROLE because WORK_RESTRICTION exists.');
        END
 ;

CREATE TRIGGER tU_CLAI4 AFTER UPDATE ON CLAIMANT_ROLE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_CLAIMANT_ROLE_ID <>
old.N_CLAIMANT_ROLE_ID)) AND
     (0 < (SELECT count(*) FROM WC_CLMNT WHERE WC_CLMNT.N_WC_CLMNT_ID = old.N_CLAIMANT_ROLE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update CLAIMANT_ROLE because WC_CLMNT exists.');
        END
 ;

CREATE TRIGGER tU_CLAI5 AFTER UPDATE ON CLAIMANT_ROLE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_CLAIMANT_ROLE_ID <>
old.N_CLAIMANT_ROLE_ID)) AND
     (0 < (SELECT count(*) FROM INJURY WHERE INJURY.N_CLAIMANT_ROLE_ID = old.N_CLAIMANT_ROLE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update CLAIMANT_ROLE because INJURY exists.');
        END
 ;

CREATE TRIGGER tU_CLAI6 AFTER UPDATE ON CLAIMANT_ROLE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_CLAIMANT_ROLE_ID <>
old.N_CLAIMANT_ROLE_ID)) AND
     (0 < (SELECT count(*) FROM CLMNT_DTL WHERE CLMNT_DTL.N_CLMNT_DTL_ID =
old.N_CLAIMANT_ROLE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update CLAIMANT_ROLE because CLMNT_DTL exists.');
        END
 ;

CREATE TRIGGER tU_CLAI7 AFTER UPDATE ON CLAIMANT_ROLE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_CLAIMANT_ROLE_ID <>
old.N_CLAIMANT_ROLE_ID))
     UPDATE PERFORMER
       SET
         PERFORMER.N_CLAIMANT_ROLE_ID = NULL
       WHERE
         PERFORMER.N_CLAIMANT_ROLE_ID = old.N_CLAIMANT_ROLE_ID
 ;

CREATE TRIGGER tU_CLAI8 AFTER UPDATE ON CLAIMANT_ROLE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_CLAIMANT_ROLE_ID <>
old.N_CLAIMANT_ROLE_ID)) AND
     (0 < (SELECT count(*) FROM SICKNESS_BENEFIT WHERE SICKNESS_BENEFIT.N_CLAIMANT_ROLE_ID =
old.N_CLAIMANT_ROLE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update CLAIMANT_ROLE because SICKNESS_BENEFIT exists.');
        END
 ;


   

CREATE TABLE CLIENT_ALERT
(
        N_ALERT_ID            CHAR(18) NOT NULL, 
        N_CUSTOMER_NUMBER     CHAR(7) NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        T_ALERT_DESC          VARCHAR(254) NOT NULL, 
        T_ALERT_TYPE          CHAR(5) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        D_ACTV_DT             TIMESTAMP NOT NULL, 
        D_INACTV_DT           TIMESTAMP NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        C_SOURCE_SYS          CHAR(5) NOT NULL
);



CREATE UNIQUE INDEX XTP23501 ON CLIENT_ALERT
(
        N_ALERT_ID            ASC
);



ALTER TABLE CLIENT_ALERT
ADD CONSTRAINT XTP23501  PRIMARY KEY (N_ALERT_ID);



ALTER TABLE CLIENT_ALERT
ADD CONSTRAINT RTP31301  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_CLIEN AFTER INSERT ON CLIENT_ALERT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ORG_ENTITY WHERE new.N_ORG_ENTY_ID = ORG_ENTITY.N_ORG_ENTY_ID))

     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert CLIENT_ALERT because ORG_ENTITY does not exist.');
        END
 ;

CREATE TRIGGER tU_CLIEN AFTER UPDATE ON CLIENT_ALERT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM ORG_ENTITY WHERE new.N_ORG_ENTY_ID = ORG_ENTITY.N_ORG_ENTY_ID))

     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update CLIENT_ALERT because ORG_ENTITY does not exist.');
        END
 ;


   

CREATE TABLE CLM_G_SUB_LOSS_TYP
(
        N_SUB_LS_TYP_ID       CHAR(16) NOT NULL, 
        N_CLMGRP_ID           CHAR(16) NOT NULL, 
        C_SUB_LOSS_TYPE       CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP61601 ON CLM_G_SUB_LOSS_TYP
(
        N_SUB_LS_TYP_ID       ASC
);



ALTER TABLE CLM_G_SUB_LOSS_TYP
ADD CONSTRAINT XTP61601  PRIMARY KEY (N_SUB_LS_TYP_ID);



ALTER TABLE CLM_G_SUB_LOSS_TYP
ADD CONSTRAINT RTP22407  FOREIGN KEY (N_CLMGRP_ID)
                REFERENCES CLAIM_GRP  (N_CLMGRP_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_CLM_G AFTER INSERT ON CLM_G_SUB_LOSS_TYP
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE CLM_G_SUB_LOSS_TYP
      SET
        CLM_G_SUB_LOSS_TYP.N_CLMGRP_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIM_GRP
            WHERE
              new.N_CLMGRP_ID = CLAIM_GRP.N_CLMGRP_ID
        )
 ;


   

CREATE TABLE CLMNT_DTL
(
        N_CLMNT_DTL_ID        CHAR(16) NOT NULL, 
        T_RCVRY_DELAY         CHAR(254) NOT NULL, 
        T_OTHER_MED           CHAR(254) NOT NULL, 
        N_CLMNT_HEIGHT        CHAR(5) NOT NULL, 
        C_HEIGHT_UOM          CHAR(5) NOT NULL, 
        N_CLMNT_WEIGHT        INTEGER, 
        C_WEIGHT_UOM          CHAR(5) NOT NULL, 
        T_RPT_BODY_PART       CHAR(80) NOT NULL, 
        T_RPT_INJ_CAUSE       CHAR(80) NOT NULL, 
        T_RPT_NAT_OF_INJ      CHAR(80) NOT NULL, 
        C_NAT_OF_INJ          CHAR(5) NOT NULL, 
        T_SOCIAL_CASE         CHAR(254) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        C_LOST_WRK_TM_IND     CHAR(1) NOT NULL, 
        C_NCCI_OK_IND         CHAR(1) NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP24001 ON CLMNT_DTL
(
        N_CLMNT_DTL_ID        ASC
);



ALTER TABLE CLMNT_DTL
ADD CONSTRAINT XTP24001  PRIMARY KEY (N_CLMNT_DTL_ID);



ALTER TABLE CLMNT_DTL
ADD CONSTRAINT RTP23201  FOREIGN KEY (N_CLMNT_DTL_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_CLMNT AFTER INSERT ON CLMNT_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_CLMNT_DTL_ID =
CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert CLMNT_DTL because CLAIMANT_ROLE does not exist.');
        END
 ;

CREATE TRIGGER tU_CLMNT AFTER UPDATE ON CLMNT_DTL
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_CLMNT_DTL_ID =
CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update CLMNT_DTL because CLAIMANT_ROLE does not exist.');
        END
 ;


   

CREATE TABLE COMPENSATION
(
        N_COMP_ID             CHAR(16) NOT NULL, 
        N_EMPL_ROLE_ID        CHAR(16) NOT NULL, 
        C_COMP_TYP            CHAR(5) NOT NULL, 
        A_COMP_AMT            DECIMAL(19, 6), 
        C_COMP_FREQ           CHAR(5) NOT NULL, 
        C_CURRENCY_UOM        CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        A_COMP_OFFSET         DECIMAL(19, 6)
);



CREATE UNIQUE INDEX XTP24101 ON COMPENSATION
(
        N_COMP_ID             ASC
);



CREATE INDEX XTP24102 ON COMPENSATION
(
        N_EMPL_ROLE_ID        ASC, 
        C_RCD_DEL             ASC
);



ALTER TABLE COMPENSATION
ADD CONSTRAINT XTP24101  PRIMARY KEY (N_COMP_ID);



ALTER TABLE COMPENSATION
ADD CONSTRAINT RTP25801  FOREIGN KEY (N_EMPL_ROLE_ID)
                REFERENCES EMPLOYMENT  (N_EMPL_ROLE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_COMPE AFTER INSERT ON COMPENSATION
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM EMPLOYMENT WHERE new.N_EMPL_ROLE_ID =
EMPLOYMENT.N_EMPL_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert COMPENSATION because EMPLOYMENT does not exist.');
        END
 ;

CREATE TRIGGER tU_COMPE AFTER UPDATE ON COMPENSATION
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM EMPLOYMENT WHERE new.N_EMPL_ROLE_ID =
EMPLOYMENT.N_EMPL_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update COMPENSATION because EMPLOYMENT does not exist.');
        END
 ;


   

CREATE TABLE CONTACT
(
        N_CONTACT_ID          CHAR(16) NOT NULL, 
        N_SUPPLIER_ID         CHAR(16) NOT NULL, 
        M_NAME                CHAR(60) NOT NULL, 
        M_EMAIL               CHAR(133) NOT NULL, 
        M_BUS_PHONE           CHAR(15) NOT NULL, 
        M_MOB_PHONE           CHAR(15) NOT NULL, 
        C_COUNTRY             CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP40401 ON CONTACT
(
        N_CONTACT_ID          ASC
);



ALTER TABLE CONTACT
ADD CONSTRAINT XTP40401  PRIMARY KEY (N_CONTACT_ID);



ALTER TABLE CONTACT
ADD CONSTRAINT RTP43702  FOREIGN KEY (N_SUPPLIER_ID)
                REFERENCES SUPPLIER  (N_SUPPLIER_ID)
                ON DELETE RESTRICT;



ALTER TABLE CONTACT_INFO
ADD CONSTRAINT RTP40401  FOREIGN KEY (N_CONTACT_ID)
                REFERENCES CONTACT  (N_CONTACT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_CONTA AFTER INSERT ON CONTACT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE CONTACT
      SET
        CONTACT.N_SUPPLIER_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM SUPPLIER
            WHERE
              new.N_SUPPLIER_ID = SUPPLIER.N_SUPPLIER_ID
        )
 ;

CREATE TRIGGER tD_CONTA AFTER DELETE ON CONTACT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CONTACT_INFO WHERE CONTACT_INFO.N_CONTACT_ID =
old.N_CONTACT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete CONTACT because CONTACT_INFO exists.');
        END
 ;


   

CREATE TABLE CONTACT_INFO
(
        N_CONTACT_INFO_ID     CHAR(16) NOT NULL, 
        N_CONTACT_ID          CHAR(16) NOT NULL, 
        C_SUPP_TYPE           CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP43501 ON CONTACT_INFO
(
        N_CONTACT_INFO_ID     ASC
);



ALTER TABLE CONTACT_INFO
ADD CONSTRAINT XTP43501  PRIMARY KEY (N_CONTACT_INFO_ID);



ALTER TABLE CONTACT_INFO
ADD CONSTRAINT RTP40401  FOREIGN KEY (N_CONTACT_ID)
                REFERENCES CONTACT  (N_CONTACT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_CONTA AFTER INSERT ON CONTACT_INFO
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM CONTACT WHERE new.N_CONTACT_ID = CONTACT.N_CONTACT_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert CONTACT_INFO because CONTACT does not exist.');
        END
 ;


   

CREATE TABLE CONV_CONTEXT
(
        N_CONVERSATION_ID     CHAR(16) NOT NULL, 
        N_ROW_ORDER           INTEGER NOT NULL, 
        M_CONVERSATION_XML    VARCHAR(4000) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL
);



CREATE UNIQUE INDEX XTP24501 ON CONV_CONTEXT
(
        N_CONVERSATION_ID     ASC, 
        N_ROW_ORDER           ASC
)
         CLUSTER;



ALTER TABLE CONV_CONTEXT
ADD CONSTRAINT XTP24501  PRIMARY KEY (N_CONVERSATION_ID, N_ROW_ORDER);



ALTER TABLE CONV_CONTEXT
ADD CONSTRAINT RTP24702  FOREIGN KEY (N_CONVERSATION_ID)
                REFERENCES CONVERSATION  (N_CONVERSATION_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_CONV_ AFTER INSERT ON CONV_CONTEXT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM CONVERSATION WHERE new.N_CONVERSATION_ID =
CONVERSATION.N_CONVERSATION_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert CONV_CONTEXT because CONVERSATION does not exist.');

        END
 ;

CREATE TRIGGER tU_CONV_ AFTER UPDATE ON CONV_CONTEXT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM CONVERSATION WHERE new.N_CONVERSATION_ID =
CONVERSATION.N_CONVERSATION_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update CONV_CONTEXT because CONVERSATION does not exist.');

        END
 ;


   

CREATE TABLE CONVERSATION
(
        N_CONVERSATION_ID     CHAR(16) NOT NULL, 
        N_APPLICATION_ID      CHAR(16) NOT NULL, 
        C_INUSE_IND           CHAR(1) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL
);



CREATE UNIQUE INDEX XTP24701 ON CONVERSATION
(
        N_CONVERSATION_ID     ASC
);



CREATE INDEX XTP24702 ON CONVERSATION
(
        N_CONVERSATION_ID     ASC, 
        N_APPLICATION_ID      ASC
)
         CLUSTER;



ALTER TABLE CONVERSATION
ADD CONSTRAINT XTP24701  PRIMARY KEY (N_CONVERSATION_ID);



ALTER TABLE ANSWER
ADD CONSTRAINT RTP24701  FOREIGN KEY (N_CONVERSATION_ID)
                REFERENCES CONVERSATION  (N_CONVERSATION_ID)
                ON DELETE RESTRICT;



ALTER TABLE CONV_CONTEXT
ADD CONSTRAINT RTP24702  FOREIGN KEY (N_CONVERSATION_ID)
                REFERENCES CONVERSATION  (N_CONVERSATION_ID)
                ON DELETE RESTRICT;



ALTER TABLE QUES_PRES
ADD CONSTRAINT RTP24703  FOREIGN KEY (N_CONVERSATION_ID)
                REFERENCES CONVERSATION  (N_CONVERSATION_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tD_CONVE AFTER DELETE ON CONVERSATION
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM QUES_PRES WHERE QUES_PRES.N_CONVERSATION_ID =
old.N_CONVERSATION_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete CONVERSATION because QUES_PRES exists.');
        END
 ;

CREATE TRIGGER tD_CONV2 AFTER DELETE ON CONVERSATION
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CONV_CONTEXT WHERE CONV_CONTEXT.N_CONVERSATION_ID =
old.N_CONVERSATION_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete CONVERSATION because CONV_CONTEXT exists.');
        END
 ;

CREATE TRIGGER tD_CONV3 AFTER DELETE ON CONVERSATION
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ANSWER WHERE ANSWER.N_CONVERSATION_ID = old.N_CONVERSATION_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete CONVERSATION because ANSWER exists.');
        END
 ;

CREATE TRIGGER tU_CONVE AFTER UPDATE ON CONVERSATION
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM CONVERSATION WHERE new.N_CONVERSATION_ID <>
old.N_CONVERSATION_ID)) AND
     (0 < (SELECT count(*) FROM QUES_PRES WHERE QUES_PRES.N_CONVERSATION_ID =
old.N_CONVERSATION_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update CONVERSATION because QUES_PRES exists.');
        END
 ;

CREATE TRIGGER tU_CONV2 AFTER UPDATE ON CONVERSATION
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM CONVERSATION WHERE new.N_CONVERSATION_ID <>
old.N_CONVERSATION_ID)) AND
     (0 < (SELECT count(*) FROM CONV_CONTEXT WHERE CONV_CONTEXT.N_CONVERSATION_ID =
old.N_CONVERSATION_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update CONVERSATION because CONV_CONTEXT exists.');
        END
 ;

CREATE TRIGGER tU_CONV3 AFTER UPDATE ON CONVERSATION
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM CONVERSATION WHERE new.N_CONVERSATION_ID <>
old.N_CONVERSATION_ID)) AND
     (0 < (SELECT count(*) FROM ANSWER WHERE ANSWER.N_CONVERSATION_ID = old.N_CONVERSATION_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update CONVERSATION because ANSWER exists.');
        END
 ;


   

CREATE TABLE COVERED_ISSUE
(
        N_COV_ISSUES_ID       CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        C_COV_ISSUES          CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP24801 ON COVERED_ISSUE
(
        N_COV_ISSUES_ID       ASC
);



CREATE INDEX XTP24802 ON COVERED_ISSUE
(
        N_LINE_ID             ASC, 
        C_RCD_DEL             ASC
);



ALTER TABLE COVERED_ISSUE
ADD CONSTRAINT XTP24801  PRIMARY KEY (N_COV_ISSUES_ID);



ALTER TABLE COVERED_ISSUE
ADD CONSTRAINT RTP30012  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_COVER AFTER INSERT ON COVERED_ISSUE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM LINE WHERE new.N_LINE_ID = LINE.N_LINE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert COVERED_ISSUE because LINE does not exist.');
        END
 ;

CREATE TRIGGER tU_COVER AFTER UPDATE ON COVERED_ISSUE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM LINE WHERE new.N_LINE_ID = LINE.N_LINE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update COVERED_ISSUE because LINE does not exist.');
        END
 ;


   

CREATE TABLE DAMAGE_ZONE
(
        N_DAMAGE_ZONE_ID      CHAR(16) NOT NULL, 
        N_DAMAGE_ZONES_ID     CHAR(16) NOT NULL, 
        C_DAMAGE_ZONE_KT      CHAR(5) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0
);



CREATE UNIQUE INDEX XTP38201 ON DAMAGE_ZONE
(
        N_DAMAGE_ZONE_ID      ASC
);



ALTER TABLE DAMAGE_ZONE
ADD CONSTRAINT XTP38201  PRIMARY KEY (N_DAMAGE_ZONE_ID);



ALTER TABLE DAMAGE_ZONE
ADD CONSTRAINT RTP38301  FOREIGN KEY (N_DAMAGE_ZONES_ID)
                REFERENCES DAMAGE_ZONE_SET  (N_DAMAGE_ZONES_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_DAMAG AFTER INSERT ON DAMAGE_ZONE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM DAMAGE_ZONE_SET WHERE new.N_DAMAGE_ZONES_ID =
DAMAGE_ZONE_SET.N_DAMAGE_ZONES_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert DAMAGE_ZONE because DAMAGE_ZONE_SET does not
exist.');
        END
 ;


   

CREATE TABLE DAMAGE_ZONE_SET
(
        N_DAMAGE_ZONES_ID     CHAR(16) NOT NULL DEFAULT '', 
        N_VEHICLE_ID          CHAR(16), 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0
);



CREATE UNIQUE INDEX XTP38301 ON DAMAGE_ZONE_SET
(
        N_DAMAGE_ZONES_ID     ASC
);



ALTER TABLE DAMAGE_ZONE_SET
ADD CONSTRAINT XTP38301  PRIMARY KEY (N_DAMAGE_ZONES_ID);



ALTER TABLE DAMAGE_ZONE_SET
ADD CONSTRAINT RTP38601  FOREIGN KEY (N_VEHICLE_ID)
                REFERENCES VEHICLE  (N_VEHICLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE DAMAGE_ZONE
ADD CONSTRAINT RTP38301  FOREIGN KEY (N_DAMAGE_ZONES_ID)
                REFERENCES DAMAGE_ZONE_SET  (N_DAMAGE_ZONES_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECOURSE_MESSAGE
ADD CONSTRAINT RTP38302  FOREIGN KEY (N_DAMAGE_ZONES_ID)
                REFERENCES DAMAGE_ZONE_SET  (N_DAMAGE_ZONES_ID)
                ON DELETE RESTRICT;



ALTER TABLE AUTOTAKS_REPORT
ADD CONSTRAINT RTP38303  FOREIGN KEY (N_DAMAGE_ZONES_ID)
                REFERENCES DAMAGE_ZONE_SET  (N_DAMAGE_ZONES_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_DAMAG AFTER INSERT ON DAMAGE_ZONE_SET
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE DAMAGE_ZONE_SET
      SET
        DAMAGE_ZONE_SET.N_VEHICLE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM VEHICLE
            WHERE
              new.N_VEHICLE_ID = VEHICLE.N_VEHICLE_ID
        )
 ;

CREATE TRIGGER tD_DAMAG AFTER DELETE ON DAMAGE_ZONE_SET
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM AUTOTAKS_REPORT WHERE AUTOTAKS_REPORT.N_DAMAGE_ZONES_ID =
old.N_DAMAGE_ZONES_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete DAMAGE_ZONE_SET because AUTOTAKS_REPORT exists.');
        END
 ;

CREATE TRIGGER tD_DAMA2 AFTER DELETE ON DAMAGE_ZONE_SET
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECOURSE_MESSAGE WHERE RECOURSE_MESSAGE.N_DAMAGE_ZONES_ID =
old.N_DAMAGE_ZONES_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete DAMAGE_ZONE_SET because RECOURSE_MESSAGE exists.');
        END
 ;

CREATE TRIGGER tD_DAMA3 AFTER DELETE ON DAMAGE_ZONE_SET
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM DAMAGE_ZONE WHERE DAMAGE_ZONE.N_DAMAGE_ZONES_ID =
old.N_DAMAGE_ZONES_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete DAMAGE_ZONE_SET because DAMAGE_ZONE exists.');
        END
 ;


   

CREATE TABLE DB_VERSION
(
        N_VERSION_ID          CHAR(21) NOT NULL, 
        C_UPDATE_TYPE         CHAR(5) NOT NULL, 
        DB20120913_R3_2_10    VARCHAR(50), 
        T_COMMENT             VARCHAR(254) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL
);



CREATE UNIQUE INDEX XTP63001 ON DB_VERSION
(
        N_VERSION_ID          ASC, 
        C_UPDATE_TYPE         ASC
);



ALTER TABLE DB_VERSION
ADD CONSTRAINT XTP63001  PRIMARY KEY (N_VERSION_ID, C_UPDATE_TYPE);



   

CREATE TABLE DEDUC_DIFFERENCE
(
        N_DEDUC_DIFF_ID       CHAR(16) NOT NULL DEFAULT '', 
        N_LINE_ID             CHAR(16), 
        N_FIN_ENT_ID          CHAR(16) DEFAULT '', 
        A_DED_MAX_PCT_AMT     DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_DED_MAX_PCT_UOM     CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_DED_MIN_PCT_AMT     DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_DED_MIN_PCT_UOM     CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_DIFF_AMT            DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_DIFF_UOM            CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_DEDUCTIBLE_PCT      DECIMAL(4, 2) NOT NULL DEFAULT 0, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0
);



CREATE UNIQUE INDEX XTP30201 ON DEDUC_DIFFERENCE
(
        N_DEDUC_DIFF_ID       ASC
)
         CLUSTER;



ALTER TABLE DEDUC_DIFFERENCE
ADD CONSTRAINT XTP30201  PRIMARY KEY (N_DEDUC_DIFF_ID);



ALTER TABLE DEDUC_DIFFERENCE
ADD CONSTRAINT RTP30033  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE DEDUC_DIFFERENCE
ADD CONSTRAINT RTP27409  FOREIGN KEY (N_FIN_ENT_ID)
                REFERENCES FINANCIAL_ENTITY  (N_FIN_ENT_ID)
                ON DELETE RESTRICT;



ALTER TABLE PAYMENT_DTL
ADD CONSTRAINT RTP30201  FOREIGN KEY (N_DEDUC_DIFF_ID)
                REFERENCES DEDUC_DIFFERENCE  (N_DEDUC_DIFF_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_DEDUC AFTER INSERT ON DEDUC_DIFFERENCE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE DEDUC_DIFFERENCE
      SET
        DEDUC_DIFFERENCE.N_FIN_ENT_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM FINANCIAL_ENTITY
            WHERE
              new.N_FIN_ENT_ID = FINANCIAL_ENTITY.N_FIN_ENT_ID
        )
 ;

CREATE TRIGGER tI_DEDU2 AFTER INSERT ON DEDUC_DIFFERENCE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE DEDUC_DIFFERENCE
      SET
        DEDUC_DIFFERENCE.N_LINE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM LINE
            WHERE
              new.N_LINE_ID = LINE.N_LINE_ID
        )
 ;

CREATE TRIGGER tD_DEDUC AFTER DELETE ON DEDUC_DIFFERENCE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PAYMENT_DTL WHERE PAYMENT_DTL.N_DEDUC_DIFF_ID =
old.N_DEDUC_DIFF_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete DEDUC_DIFFERENCE because PAYMENT_DTL exists.');
        END
 ;


   

CREATE TABLE DEMAND_OFFER
(
        N_DEMAND_ID           CHAR(16) NOT NULL, 
        N_NEGOTIATION_ID      CHAR(16) NOT NULL, 
        C_TYPE                CHAR(3) NOT NULL, 
        Q_AMOUNT_VAL          DECIMAL(19, 6), 
        C_AMOUNT_UOM          CHAR(5) NOT NULL, 
        D_DATE_ESTB           TIMESTAMP NOT NULL, 
        C_MODE                CHAR(5) NOT NULL, 
        C_MARK_IN_ERR_IND     CHAR(1) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP25101 ON DEMAND_OFFER
(
        N_DEMAND_ID           ASC
)
         CLUSTER;



CREATE INDEX XTP25102 ON DEMAND_OFFER
(
        N_NEGOTIATION_ID      ASC, 
        C_TYPE                ASC, 
        C_RCD_DEL             ASC
);



ALTER TABLE DEMAND_OFFER
ADD CONSTRAINT XTP25101  PRIMARY KEY (N_DEMAND_ID);



ALTER TABLE DEMAND_OFFER
ADD CONSTRAINT RTP30901  FOREIGN KEY (N_NEGOTIATION_ID)
                REFERENCES NEGOTIATION  (N_NEGOTIATION_ID)
                ON DELETE RESTRICT;



   

CREATE TABLE DIAGNOSTIC_TEST
(
        N_DIAG_TEST_ID        CHAR(16) NOT NULL, 
        N_TREATMENT_ID        CHAR(16) NOT NULL, 
        C_DIAG_TEST_CODE      CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP25201 ON DIAGNOSTIC_TEST
(
        N_DIAG_TEST_ID        ASC
);



ALTER TABLE DIAGNOSTIC_TEST
ADD CONSTRAINT XTP25201  PRIMARY KEY (N_DIAG_TEST_ID);



ALTER TABLE DIAGNOSTIC_TEST
ADD CONSTRAINT RTP38401  FOREIGN KEY (N_TREATMENT_ID)
                REFERENCES TREATMENTS  (N_TREATMENT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_DIAGN AFTER INSERT ON DIAGNOSTIC_TEST
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM TREATMENTS WHERE new.N_TREATMENT_ID =
TREATMENTS.N_TREATMENT_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert DIAGNOSTIC_TEST because TREATMENTS does not
exist.');
        END
 ;

CREATE TRIGGER tU_DIAGN AFTER UPDATE ON DIAGNOSTIC_TEST
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM TREATMENTS WHERE new.N_TREATMENT_ID =
TREATMENTS.N_TREATMENT_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update DIAGNOSTIC_TEST because TREATMENTS does not
exist.');
        END
 ;


   

CREATE TABLE DISABILITY
(
        N_DISABILITY_ID       CHAR(16) NOT NULL, 
        N_CLAIMANT_ROLE_ID    CHAR(16) NOT NULL, 
        N_INS_INVL_ID         CHAR(16) NOT NULL, 
        N_PRFMR_ID            CHAR(16) NOT NULL, 
        C_PERM_NOD_CODE       CHAR(5) NOT NULL, 
        C_PROOF_AGE_IND       CHAR(1) NOT NULL, 
        C_PCI_CODE            CHAR(5) NOT NULL, 
        F_PCI_PCT             DECIMAL(4, 3), 
        C_PCI_TYPE_CODE       CHAR(5) NOT NULL, 
        C_PCI_BENEFIT_CODE    CHAR(5) NOT NULL, 
        C_PCI_DECIS_CODE      CHAR(5) NOT NULL, 
        D_EFF_DT              TIMESTAMP NOT NULL, 
        C_REPORT_IND          CHAR(1) NOT NULL, 
        C_BODY_PART_CTGY      CHAR(5) NOT NULL, 
        C_BODY_PART           CHAR(5) NOT NULL, 
        C_ACTIVE_IND          CHAR(1) NOT NULL, 
        C_ACTUAL_IND          CHAR(1) NOT NULL, 
        Q_BODY_RED_PCT        DECIMAL(19, 6), 
        Q_DISABILITY_MULT     DECIMAL(19, 6), 
        F_EET_PCT             DECIMAL(19, 6), 
        F_EET_RED_PCT         DECIMAL(19, 6), 
        F_BODY_PART_PCT       DECIMAL(4, 3), 
        D_MMI_DT              TIMESTAMP NOT NULL, 
        C_OVL_MMI_IND         CHAR(3) NOT NULL, 
        N_LAST_MAN_DEPT_ID    CHAR(4) NOT NULL, 
        N_LAST_WORKDEPT_ID    CHAR(5) NOT NULL, 
        N_CREATED_OE          CHAR(16) NOT NULL, 
        N_CREATED_DEPT        CHAR(4) NOT NULL, 
        N_CREATED_WORKDEPT    CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP25401 ON DISABILITY
(
        N_DISABILITY_ID       ASC
);



ALTER TABLE DISABILITY
ADD CONSTRAINT XTP25401  PRIMARY KEY (N_DISABILITY_ID);



ALTER TABLE DISABILITY
ADD CONSTRAINT RTP23202  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE SET NULL;



ALTER TABLE DISABILITY
ADD CONSTRAINT RTP32002  FOREIGN KEY (N_PRFMR_ID)
                REFERENCES PERFORMER  (N_PRFMR_ID)
                ON DELETE RESTRICT;



ALTER TABLE DISABILITY
ADD CONSTRAINT RTP28306  FOREIGN KEY (N_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE SET NULL;



CREATE TRIGGER tI_DISAB AFTER INSERT ON DISABILITY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE DISABILITY
      SET
        DISABILITY.N_CLAIMANT_ROLE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIMANT_ROLE
            WHERE
              new.N_CLAIMANT_ROLE_ID = CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID
        )
 ;

CREATE TRIGGER tI_DISA2 AFTER INSERT ON DISABILITY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE DISABILITY
      SET
        DISABILITY.N_INS_INVL_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INS_INVOLVEMENT
            WHERE
              new.N_INS_INVL_ID = INS_INVOLVEMENT.N_INS_INVL_ID
        )
 ;

CREATE TRIGGER tI_DISA3 AFTER INSERT ON DISABILITY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM PERFORMER WHERE new.N_PRFMR_ID = PERFORMER.N_PRFMR_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert DISABILITY because PERFORMER does not exist.');
        END
 ;

CREATE TRIGGER tU_DISAB AFTER UPDATE ON DISABILITY
     FOR EACH ROW MODE DB2SQL
    UPDATE DISABILITY
      SET
        DISABILITY.N_CLAIMANT_ROLE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIMANT_ROLE
            WHERE
              new.N_CLAIMANT_ROLE_ID = CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID
        )
 ;

CREATE TRIGGER tU_DISA2 AFTER UPDATE ON DISABILITY
     FOR EACH ROW MODE DB2SQL
    UPDATE DISABILITY
      SET
        DISABILITY.N_INS_INVL_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INS_INVOLVEMENT
            WHERE
              new.N_INS_INVL_ID = INS_INVOLVEMENT.N_INS_INVL_ID
        )
 ;

CREATE TRIGGER tU_DISA3 AFTER UPDATE ON DISABILITY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM PERFORMER WHERE new.N_PRFMR_ID = PERFORMER.N_PRFMR_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update DISABILITY because PERFORMER does not exist.');
        END
 ;


   

CREATE TABLE DISCOUNT_PER_UNIT
(
        N_DISC_PER_UNIT_ID    CHAR(16) NOT NULL, 
        N_GLASS_AGREEMT_ID    CHAR(16) NOT NULL, 
        C_CONTEXT             CHAR(5) NOT NULL DEFAULT '', 
        C_CODE                CHAR(5) NOT NULL DEFAULT '', 
        A_DISCOUNT_AMT        DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_DISCOUNT_UOM        CHAR(5) NOT NULL DEFAULT 'DKK', 
        F_DISCOUNT_FOR_PAY    DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP42801 ON DISCOUNT_PER_UNIT
(
        N_DISC_PER_UNIT_ID    ASC, 
        N_GLASS_AGREEMT_ID    ASC
)
         CLUSTER;



ALTER TABLE DISCOUNT_PER_UNIT
ADD CONSTRAINT XTP42801  PRIMARY KEY (N_DISC_PER_UNIT_ID, N_GLASS_AGREEMT_ID);



ALTER TABLE DISCOUNT_PER_UNIT
ADD CONSTRAINT RTP42701  FOREIGN KEY (N_GLASS_AGREEMT_ID)
                REFERENCES AUTOGLASS_AGREEMNT  (N_GLASS_AGREEMT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_DISCO AFTER INSERT ON DISCOUNT_PER_UNIT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM AUTOGLASS_AGREEMNT WHERE new.N_GLASS_AGREEMT_ID =
AUTOGLASS_AGREEMNT.N_GLASS_AGREEMT_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert DISCOUNT_PER_UNIT because AUTOGLASS_AGREEMNT does
not exist.');
        END
 ;

CREATE TABLE DOC_INTERPRETR_DTL
(
        N_INTERPRTR_DTL_ID    CHAR(16) NOT NULL, 
        N_INTERPRTR_HDR_ID    CHAR(15) NOT NULL, 
        C_CNTXT_TYPE          CHAR(5) NOT NULL, 
        N_CNTXT_SEQ_NBR       INTEGER NOT NULL, 
        N_CNTXT_PICKED_ID     CHAR(16) NOT NULL, 
        C_CNTXT_CODE          CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP47501 ON DOC_INTERPRETR_DTL
(
        N_INTERPRTR_DTL_ID    ASC
);



CREATE INDEX XTP47503 ON DOC_INTERPRETR_DTL
(
        N_CNTXT_PICKED_ID     ASC
);



ALTER TABLE DOC_INTERPRETR_DTL
ADD CONSTRAINT XTP47501  PRIMARY KEY (N_INTERPRTR_DTL_ID);



ALTER TABLE DOC_INTERPRETR_DTL
ADD CONSTRAINT RTP47601  FOREIGN KEY (N_INTERPRTR_HDR_ID)
                REFERENCES DOC_INTERPRETR_HDR  (N_INTERPRTR_HDR_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_DOC_I AFTER INSERT ON DOC_INTERPRETR_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE DOC_INTERPRETR_DTL
      SET
        DOC_INTERPRETR_DTL.N_INTERPRTR_HDR_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM DOC_INTERPRETR_HDR
            WHERE
              new.N_INTERPRTR_HDR_ID = DOC_INTERPRETR_HDR.N_INTERPRTR_HDR_ID
        )
 ;


   

CREATE TABLE DOC_INTERPRETR_HDR
(
        N_INTERPRTR_HDR_ID    CHAR(15) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        N_ASF_TEMPLATE_ID     CHAR(9) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_KOMM_TYPE           CHAR(5) NOT NULL DEFAULT '00', 
        N_USER_ID             CHAR(16) NOT NULL DEFAULT '', 
        D_PRINTING_DATE       TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        T_EMAIL               VARCHAR(256) NOT NULL DEFAULT x'05'
);



CREATE UNIQUE INDEX XTP47601 ON DOC_INTERPRETR_HDR
(
        N_INTERPRTR_HDR_ID    ASC
);



ALTER TABLE DOC_INTERPRETR_HDR
ADD CONSTRAINT XTP47601  PRIMARY KEY (N_INTERPRTR_HDR_ID);



ALTER TABLE DOC_INTERPRETR_HDR
ADD CONSTRAINT RTP22229  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



ALTER TABLE DOC_INTERPRETR_DTL
ADD CONSTRAINT RTP47601  FOREIGN KEY (N_INTERPRTR_HDR_ID)
                REFERENCES DOC_INTERPRETR_HDR  (N_INTERPRTR_HDR_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_DOC_I AFTER INSERT ON DOC_INTERPRETR_HDR
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE DOC_INTERPRETR_HDR
      SET
        DOC_INTERPRETR_HDR.N_CLAIM_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIM
            WHERE
              new.N_CLAIM_ID = CLAIM.N_CLAIM_ID
        )
 ;

CREATE TRIGGER tD_DOC_I AFTER DELETE ON DOC_INTERPRETR_HDR
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM DOC_INTERPRETR_DTL WHERE DOC_INTERPRETR_DTL.N_INTERPRTR_HDR_ID =
old.N_INTERPRTR_HDR_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete DOC_INTERPRETR_HDR because DOC_INTERPRETR_DTL
exists.');
        END
 ;


   

CREATE TABLE E_MAIL
(
        N_EMAIL_ID            CHAR(16) NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        T_EMAIL_ADDRESS       CHAR(70) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP25701 ON E_MAIL
(
        N_EMAIL_ID            ASC
);



ALTER TABLE E_MAIL
ADD CONSTRAINT XTP25701  PRIMARY KEY (N_EMAIL_ID);



ALTER TABLE E_MAIL
ADD CONSTRAINT RTP31302  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



   

CREATE TABLE EMPLOYMENT
(
        N_EMPL_ROLE_ID        CHAR(16) NOT NULL, 
        C_RPT_JOB_CLASS       CHAR(5) NOT NULL, 
        N_INVL_ROLE_ID        CHAR(16) NOT NULL, 
        C_OVRD_AWW_UOM        CHAR(5) NOT NULL, 
        M_JOB_TITLE           CHAR(20) NOT NULL, 
        M_EMPLOYER            CHAR(90) NOT NULL, 
        D_HIRED               TIMESTAMP NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_JOB_DESC            VARCHAR(225) NOT NULL, 
        D_IN_CURR_JOB         TIMESTAMP NOT NULL, 
        D_LST_WRKD            TIMESTAMP NOT NULL, 
        C_ADJ_AVG_WW_UOM      CHAR(5) NOT NULL, 
        C_ADD_EMP_IND         CHAR(1) NOT NULL, 
        T_DEPT_DESC           CHAR(45) NOT NULL, 
        C_EMP_TYP             CHAR(5) NOT NULL, 
        C_PYCHCK_FREQ         CHAR(5) NOT NULL, 
        Q_HRS_WRKD_DLY        DECIMAL(5, 2), 
        Q_HRS_WRKD_WKLY       DECIMAL(5, 2), 
        Q_DAYS_WRKD_WKLY      INTEGER, 
        C_WRK_LOC_STATE       CHAR(5) NOT NULL, 
        C_INSUROR_DIV         CHAR(5) NOT NULL, 
        C_WRK_LOC_CNTY        CHAR(5) NOT NULL, 
        C_GROSS_WAGE_UOM      CHAR(5) NOT NULL, 
        A_FRNG_BNFT_AMT       DECIMAL(19, 6), 
        C_FRNG_BNFT_UOM       CHAR(5) NOT NULL, 
        C_EMP_STAT            CHAR(5) NOT NULL, 
        D_FRNG_BNFT_END_DT    TIMESTAMP NOT NULL, 
        C_STATE_HIRED         CHAR(5) NOT NULL, 
        A_GROSS_WAGE_AMT      DECIMAL(19, 6), 
        C_FRNG_BNFT_IND       CHAR(1) NOT NULL, 
        M_DEP_OF_UNION        CHAR(50) NOT NULL, 
        C_WORK_SHIFT          CHAR(14) NOT NULL, 
        C_UNION               CHAR(5) NOT NULL, 
        Q_HOLD_HOLIDAY        DECIMAL(19, 6), 
        A_NET_WAGE_AMT        DECIMAL(19, 6), 
        A_HOLIDAY_AMT         DECIMAL(19, 6), 
        C_HOLIDAY_UOM         CHAR(5) NOT NULL, 
        A_YEAR1_WAGE_AMT      DECIMAL(19, 6), 
        C_NET_WAGE_UOM        CHAR(5) NOT NULL, 
        A_YEAR2_WAGE_AMT      DECIMAL(19, 6), 
        C_YEAR1_WAGE_UOM      CHAR(5) NOT NULL, 
        A_YEAR3_WAGE_AMT      DECIMAL(19, 6), 
        C_YEAR2_WAGE_UOM      CHAR(5) NOT NULL, 
        Q_PENSION_PCT         DECIMAL(19, 6), 
        Q_WEEK_HOL_PCT        DECIMAL(19, 6), 
        C_YEAR3_WAGE_UOM      CHAR(5) NOT NULL, 
        A_LABOR_CONTRB        DECIMAL(19, 6), 
        A_OVRD_AWW_AMT        DECIMAL(19, 6), 
        M_SAFETY_REP          CHAR(90) NOT NULL, 
        Q_ADJ_AVG_WW_VAL      DECIMAL(19, 6), 
        T_OCC_DESC            CHAR(40) NOT NULL, 
        Q_MO_IN_CURR_JOB      INTEGER, 
        Q_MO_IN_EMPLOY        INTEGER, 
        C_REASON_UNEMPLOYM    CHAR(5) NOT NULL DEFAULT '', 
        D_EMPLOYMNT_END_DT    TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000'
);



CREATE UNIQUE INDEX XTP25801 ON EMPLOYMENT
(
        N_EMPL_ROLE_ID        ASC
);



ALTER TABLE EMPLOYMENT
ADD CONSTRAINT XTP25801  PRIMARY KEY (N_EMPL_ROLE_ID);



ALTER TABLE EMPLOYMENT
ADD CONSTRAINT RTP28904  FOREIGN KEY (N_INVL_ROLE_ID)
                REFERENCES INVOLVEMENT_ROLE  (N_INVL_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE COMPENSATION
ADD CONSTRAINT RTP25801  FOREIGN KEY (N_EMPL_ROLE_ID)
                REFERENCES EMPLOYMENT  (N_EMPL_ROLE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_EMPLO AFTER INSERT ON EMPLOYMENT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INVOLVEMENT_ROLE WHERE new.N_INVL_ROLE_ID =
INVOLVEMENT_ROLE.N_INVL_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert EMPLOYMENT because INVOLVEMENT_ROLE does not
exist.');
        END
 ;

CREATE TRIGGER tD_EMPLO AFTER DELETE ON EMPLOYMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM COMPENSATION WHERE COMPENSATION.N_EMPL_ROLE_ID =
old.N_EMPL_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete EMPLOYMENT because COMPENSATION exists.');
        END
 ;

CREATE TRIGGER tU_EMPLO AFTER UPDATE ON EMPLOYMENT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM EMPLOYMENT WHERE new.N_EMPL_ROLE_ID <> old.N_EMPL_ROLE_ID)) AND

     (0 < (SELECT count(*) FROM COMPENSATION WHERE COMPENSATION.N_EMPL_ROLE_ID =
old.N_EMPL_ROLE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update EMPLOYMENT because COMPENSATION exists.');
        END
 ;

CREATE TRIGGER tU_EMPL2 AFTER UPDATE ON EMPLOYMENT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM INVOLVEMENT_ROLE WHERE new.N_INVL_ROLE_ID =
INVOLVEMENT_ROLE.N_INVL_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update EMPLOYMENT because INVOLVEMENT_ROLE does not
exist.');
        END
 ;


   

CREATE TABLE ENVELOPE
(
        N_FILE_NTE_ID         CHAR(16) NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        N_TASK_ID             CHAR(16) NOT NULL, 
        D_FILE_NTE_SENT       TIMESTAMP NOT NULL
);



CREATE UNIQUE INDEX XTP25901 ON ENVELOPE
(
        N_FILE_NTE_ID         ASC, 
        N_TASK_ID             ASC, 
        N_ORG_ENTY_ID         ASC
);



ALTER TABLE ENVELOPE
ADD CONSTRAINT XTP25901  PRIMARY KEY (N_FILE_NTE_ID, N_TASK_ID, N_ORG_ENTY_ID);



ALTER TABLE ENVELOPE
ADD CONSTRAINT RTP21902  FOREIGN KEY (N_TASK_ID)
                REFERENCES CCS_TASK  (N_TASK_ID)
                ON DELETE RESTRICT;



ALTER TABLE ENVELOPE
ADD CONSTRAINT RTP27203  FOREIGN KEY (N_FILE_NTE_ID)
                REFERENCES FILE_NOTE  (N_FILE_NTE_ID)
                ON DELETE RESTRICT;



ALTER TABLE ENVELOPE
ADD CONSTRAINT RTP31306  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_ENVEL AFTER INSERT ON ENVELOPE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ORG_ENTITY WHERE new.N_ORG_ENTY_ID = ORG_ENTITY.N_ORG_ENTY_ID))

     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert ENVELOPE because ORG_ENTITY does not exist.');
        END
 ;


   

CREATE TABLE ESTM_DISABILITY
(
        N_ESTM_DSBLTY_ID      CHAR(16) NOT NULL, 
        N_CLAIMANT_ROLE_ID    CHAR(16) NOT NULL, 
        C_BODY_PART_CTGY      CHAR(5) NOT NULL, 
        C_BODY_PART           CHAR(5) NOT NULL, 
        F_ESTM_PCT            DECIMAL(4, 3), 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP26001 ON ESTM_DISABILITY
(
        N_ESTM_DSBLTY_ID      ASC
);



ALTER TABLE ESTM_DISABILITY
ADD CONSTRAINT XTP26001  PRIMARY KEY (N_ESTM_DSBLTY_ID);



ALTER TABLE ESTM_DISABILITY
ADD CONSTRAINT RTP23203  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_ESTM_ AFTER INSERT ON ESTM_DISABILITY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE ESTM_DISABILITY
      SET
        ESTM_DISABILITY.N_CLAIMANT_ROLE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIMANT_ROLE
            WHERE
              new.N_CLAIMANT_ROLE_ID = CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID
        )
 ;

CREATE TRIGGER tU_ESTM_ AFTER UPDATE ON ESTM_DISABILITY
     FOR EACH ROW MODE DB2SQL
    UPDATE ESTM_DISABILITY
      SET
        ESTM_DISABILITY.N_CLAIMANT_ROLE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIMANT_ROLE
            WHERE
              new.N_CLAIMANT_ROLE_ID = CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID
        )
 ;


   

CREATE TABLE EVENT
(
        N_EVT_ID              CHAR(16) NOT NULL, 
        N_EVT_TYPE            INTEGER NOT NULL, 
        N_ASSN_ID             CHAR(16) NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        C_ASSN_TY             CHAR(5) NOT NULL, 
        D_EVT_CREA            TIMESTAMP NOT NULL, 
        D_PROC_STRT           TIMESTAMP NOT NULL, 
        C_COMPLETION          INTEGER, 
        C_DATA_CHG            CHAR(1) NOT NULL, 
        C_GENERATION_CTGRY    CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_CHANNEL             INTEGER, 
        N_EVT_PROCESSOR_ID    CHAR(16) NOT NULL, 
        N_ENTITY_ID           CHAR(16) NOT NULL, 
        M_CONTEXT_DATA        VARCHAR(254) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        T_DISPL_CNTXT         VARCHAR(600) NOT NULL
);



CREATE UNIQUE INDEX XTP26101 ON EVENT
(
        N_EVT_ID              ASC
)
         CLUSTER;



CREATE INDEX XTP26107 ON EVENT
(
        N_ENTITY_ID           ASC, 
        N_CHANNEL             ASC
);



CREATE INDEX XTP26108 ON EVENT
(
        N_CHANNEL             ASC, 
        D_EVT_CREA            ASC, 
        N_ENTITY_ID           ASC, 
        C_RCD_DEL             ASC
);



ALTER TABLE EVENT
ADD CONSTRAINT XTP26101  PRIMARY KEY (N_EVT_ID);



ALTER TABLE EVENT
ADD CONSTRAINT RTP31309  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE EVENT
ADD CONSTRAINT RTP28403  FOREIGN KEY (N_ENTITY_ID)
                REFERENCES INSURANCE_ENTITY  (N_ENTITY_ID)
                ON DELETE RESTRICT;



ALTER TABLE EVENT
ADD CONSTRAINT RTP26303  FOREIGN KEY (N_EVT_PROCESSOR_ID)
                REFERENCES EVENT_PROC_MONITOR  (N_EVT_PROCESSOR_ID)
                ON DELETE SET NULL;



CREATE TRIGGER tI_EVENT AFTER INSERT ON EVENT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE EVENT
      SET
        EVENT.N_ORG_ENTY_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ORG_ENTITY
            WHERE
              new.N_ORG_ENTY_ID = ORG_ENTITY.N_ORG_ENTY_ID
        )
 ;

CREATE TRIGGER tI_EVEN2 AFTER INSERT ON EVENT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE EVENT
      SET
        EVENT.N_EVT_PROCESSOR_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM EVENT_PROC_MONITOR
            WHERE
              new.N_EVT_PROCESSOR_ID = EVENT_PROC_MONITOR.N_EVT_PROCESSOR_ID
        )
 ;

CREATE TRIGGER tI_EVEN3 AFTER INSERT ON EVENT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INSURANCE_ENTITY WHERE new.N_ENTITY_ID =
INSURANCE_ENTITY.N_ENTITY_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert EVENT because INSURANCE_ENTITY does not exist.');
        END
 ;

CREATE TRIGGER tU_EVENT AFTER UPDATE ON EVENT
     FOR EACH ROW MODE DB2SQL
    UPDATE EVENT
      SET
        EVENT.N_EVT_PROCESSOR_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM EVENT_PROC_MONITOR
            WHERE
              new.N_EVT_PROCESSOR_ID = EVENT_PROC_MONITOR.N_EVT_PROCESSOR_ID
        )
 ;

CREATE TRIGGER tU_EVEN2 AFTER UPDATE ON EVENT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM INSURANCE_ENTITY WHERE new.N_ENTITY_ID =
INSURANCE_ENTITY.N_ENTITY_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update EVENT because INSURANCE_ENTITY does not exist.');
        END
 ;


   

CREATE TABLE EVENT_HISTORY
(
        N_EVT_ID              CHAR(16) NOT NULL, 
        N_EVT_TYPE            INTEGER NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        D_EVT_CREA            TIMESTAMP NOT NULL, 
        D_PROC_STRT           TIMESTAMP NOT NULL, 
        D_PROC_END            TIMESTAMP NOT NULL, 
        C_COMPLETION          CHAR(1) NOT NULL, 
        N_ASSN_ID             CHAR(16) NOT NULL, 
        C_ASSN_TY             CHAR(5) NOT NULL, 
        C_DATA_CHG            CHAR(1) NOT NULL, 
        C_GENERATION_CTGRY    CHAR(3) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_PROCESS_TIME        INTEGER, 
        N_EVT_PROCESSOR_ID    CHAR(16) NOT NULL, 
        N_ENTITY_ID           CHAR(16) NOT NULL, 
        N_CHANNEL             INTEGER, 
        M_CONTEXT_DATA        VARCHAR(254) NOT NULL, 
        T_DISPL_CNTXT         VARCHAR(600) NOT NULL
);



CREATE UNIQUE INDEX XTP26201 ON EVENT_HISTORY
(
        N_EVT_ID              ASC
);



CREATE INDEX XTP26202 ON EVENT_HISTORY
(
        C_DATA_CHG            ASC, 
        N_EVT_TYPE            ASC, 
        N_ENTITY_ID           ASC
);



CREATE INDEX XTP26203 ON EVENT_HISTORY
(
        D_EVT_CREA            ASC
);



CREATE INDEX XTP26210 ON EVENT_HISTORY
(
        N_EVT_TYPE            ASC
);



CREATE INDEX XTP26205 ON EVENT_HISTORY
(
        N_ASSN_ID             ASC, 
        N_EVT_TYPE            ASC
);



ALTER TABLE EVENT_HISTORY
ADD CONSTRAINT XTP26201  PRIMARY KEY (N_EVT_ID);



ALTER TABLE EVENT_HISTORY
ADD CONSTRAINT RTP28404  FOREIGN KEY (N_ENTITY_ID)
                REFERENCES INSURANCE_ENTITY  (N_ENTITY_ID)
                ON DELETE RESTRICT;



ALTER TABLE EVENT_HISTORY
ADD CONSTRAINT RTP26302  FOREIGN KEY (N_EVT_PROCESSOR_ID)
                REFERENCES EVENT_PROC_MONITOR  (N_EVT_PROCESSOR_ID)
                ON DELETE RESTRICT;



ALTER TABLE EVENT_HISTORY
ADD CONSTRAINT RTP31319  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_EVENT AFTER INSERT ON EVENT_HISTORY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INSURANCE_ENTITY WHERE new.N_ENTITY_ID =
INSURANCE_ENTITY.N_ENTITY_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert EVENT_HISTORY because INSURANCE_ENTITY does not
exist.');
        END
 ;

CREATE TRIGGER tI_EVEN2 AFTER INSERT ON EVENT_HISTORY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE EVENT_HISTORY
      SET
        EVENT_HISTORY.N_ORG_ENTY_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ORG_ENTITY
            WHERE
              new.N_ORG_ENTY_ID = ORG_ENTITY.N_ORG_ENTY_ID
        )
 ;

CREATE TRIGGER tU_EVENT AFTER UPDATE ON EVENT_HISTORY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM INSURANCE_ENTITY WHERE new.N_ENTITY_ID =
INSURANCE_ENTITY.N_ENTITY_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update EVENT_HISTORY because INSURANCE_ENTITY does not
exist.');
        END
 ;


   

CREATE TABLE EVENT_PROC_MONITOR
(
        N_EVT_PROCESSOR_ID    CHAR(16) NOT NULL, 
        D_START               TIMESTAMP NOT NULL, 
        D_STOP                TIMESTAMP NOT NULL, 
        M_SERVER              CHAR(20) NOT NULL, 
        N_CHANNEL             INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP26301 ON EVENT_PROC_MONITOR
(
        N_EVT_PROCESSOR_ID    ASC
);



ALTER TABLE EVENT_PROC_MONITOR
ADD CONSTRAINT XTP26301  PRIMARY KEY (N_EVT_PROCESSOR_ID);



ALTER TABLE EVENT_HISTORY
ADD CONSTRAINT RTP26302  FOREIGN KEY (N_EVT_PROCESSOR_ID)
                REFERENCES EVENT_PROC_MONITOR  (N_EVT_PROCESSOR_ID)
                ON DELETE RESTRICT;



ALTER TABLE EVENT
ADD CONSTRAINT RTP26303  FOREIGN KEY (N_EVT_PROCESSOR_ID)
                REFERENCES EVENT_PROC_MONITOR  (N_EVT_PROCESSOR_ID)
                ON DELETE SET NULL;



ALTER TABLE EVENT_PROC_STATUS
ADD CONSTRAINT RTP26301  FOREIGN KEY (N_EVT_PROCESSOR_ID)
                REFERENCES EVENT_PROC_MONITOR  (N_EVT_PROCESSOR_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tD_EVENT AFTER DELETE ON EVENT_PROC_MONITOR
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM EVENT_PROC_STATUS WHERE EVENT_PROC_STATUS.N_EVT_PROCESSOR_ID =
old.N_EVT_PROCESSOR_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete EVENT_PROC_MONITOR because EVENT_PROC_STATUS
exists.');
        END
 ;

CREATE TRIGGER tD_EVEN2 AFTER DELETE ON EVENT_PROC_MONITOR
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
    UPDATE EVENT
      SET
        EVENT.N_EVT_PROCESSOR_ID = NULL
      WHERE
        EVENT.N_EVT_PROCESSOR_ID = old.N_EVT_PROCESSOR_ID
 ;

CREATE TRIGGER tD_EVEN3 AFTER DELETE ON EVENT_PROC_MONITOR
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM EVENT_HISTORY WHERE EVENT_HISTORY.N_EVT_PROCESSOR_ID =
old.N_EVT_PROCESSOR_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete EVENT_PROC_MONITOR because EVENT_HISTORY exists.');
        END
 ;

CREATE TRIGGER tU_EVENT AFTER UPDATE ON EVENT_PROC_MONITOR
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM EVENT_PROC_MONITOR WHERE new.N_EVT_PROCESSOR_ID <>
old.N_EVT_PROCESSOR_ID)) AND
     (0 < (SELECT count(*) FROM EVENT_PROC_STATUS WHERE EVENT_PROC_STATUS.N_EVT_PROCESSOR_ID =
old.N_EVT_PROCESSOR_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update EVENT_PROC_MONITOR because EVENT_PROC_STATUS
exists.');
        END
 ;

CREATE TRIGGER tU_EVEN2 AFTER UPDATE ON EVENT_PROC_MONITOR
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM EVENT_PROC_MONITOR WHERE new.N_EVT_PROCESSOR_ID <>
old.N_EVT_PROCESSOR_ID))
     UPDATE EVENT
       SET
         EVENT.N_EVT_PROCESSOR_ID = NULL
       WHERE
         EVENT.N_EVT_PROCESSOR_ID = old.N_EVT_PROCESSOR_ID
 ;


   

CREATE TABLE EVENT_PROC_STATUS
(
        N_ENTITY_ID           CHAR(16) NOT NULL, 
        N_EVT_PROCESSOR_ID    CHAR(16) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_STATUS              CHAR(5) NOT NULL
);



CREATE UNIQUE INDEX XTP26401 ON EVENT_PROC_STATUS
(
        N_ENTITY_ID           ASC
);



CREATE INDEX XTP26403 ON EVENT_PROC_STATUS
(
        N_EVT_PROCESSOR_ID    ASC, 
        C_STATUS              ASC
);



CREATE INDEX XTP26405 ON EVENT_PROC_STATUS
(
        C_STATUS              ASC
);



ALTER TABLE EVENT_PROC_STATUS
ADD CONSTRAINT XTP26401  PRIMARY KEY (N_ENTITY_ID);



ALTER TABLE EVENT_PROC_STATUS
ADD CONSTRAINT RTP26301  FOREIGN KEY (N_EVT_PROCESSOR_ID)
                REFERENCES EVENT_PROC_MONITOR  (N_EVT_PROCESSOR_ID)
                ON DELETE RESTRICT;



ALTER TABLE EVENT_PROC_STATUS
ADD CONSTRAINT RTP22204  FOREIGN KEY (N_ENTITY_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE SET NULL;



CREATE TRIGGER tI_EVENT AFTER INSERT ON EVENT_PROC_STATUS
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM EVENT_PROC_MONITOR WHERE new.N_EVT_PROCESSOR_ID =
EVENT_PROC_MONITOR.N_EVT_PROCESSOR_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert EVENT_PROC_STATUS because EVENT_PROC_MONITOR does
not exist.');
        END
 ;

CREATE TRIGGER tI_EVEN2 AFTER INSERT ON EVENT_PROC_STATUS
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE EVENT_PROC_STATUS
      SET
        EVENT_PROC_STATUS.N_ENTITY_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIM
            WHERE
              new.N_ENTITY_ID = CLAIM.N_CLAIM_ID
        )
 ;

CREATE TRIGGER tU_EVENT AFTER UPDATE ON EVENT_PROC_STATUS
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM EVENT_PROC_MONITOR WHERE new.N_EVT_PROCESSOR_ID =
EVENT_PROC_MONITOR.N_EVT_PROCESSOR_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update EVENT_PROC_STATUS because EVENT_PROC_MONITOR does
not exist.');
        END
 ;

CREATE TRIGGER tU_EVEN2 AFTER UPDATE ON EVENT_PROC_STATUS
     FOR EACH ROW MODE DB2SQL
    UPDATE EVENT_PROC_STATUS
      SET
        EVENT_PROC_STATUS.N_ENTITY_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIM
            WHERE
              new.N_ENTITY_ID = CLAIM.N_CLAIM_ID
        )
 ;


   

CREATE TABLE FILE_NOTE
(
        N_FILE_NTE_ID         CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        C_DRAFT_IND           CHAR(1) NOT NULL, 
        N_FNTEXT_ID           CHAR(16) NOT NULL, 
        D_FILE_NTE_FNL        TIMESTAMP NOT NULL, 
        D_FINAL_ON            TIMESTAMP NOT NULL, 
        C_SUBCATEGORY         CHAR(5) NOT NULL, 
        T_USER_INPUT          VARCHAR(4000) NOT NULL, 
        C_SIGNIFICANT_IND     CHAR(1) NOT NULL, 
        C_ACCESS_IND          CHAR(1) NOT NULL, 
        T_SHRT_DESC           CHAR(50) NOT NULL, 
        T_SHRT_TXT            VARCHAR(254) NOT NULL, 
        C_ATCH_IND            CHAR(1) NOT NULL, 
        C_FN_TYP              CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_SYSTEM_GEN_IND      CHAR(1) NOT NULL, 
        N_FN_ATCH_ID          VARCHAR(16) NOT NULL
);



CREATE UNIQUE INDEX XTP27201 ON FILE_NOTE
(
        N_FILE_NTE_ID         ASC
);



CREATE UNIQUE INDEX XTP27202 ON FILE_NOTE
(
        N_CLAIM_ID            ASC, 
        N_FILE_NTE_ID         ASC, 
        D_FINAL_ON            ASC, 
        D_CREATE_TS           ASC, 
        C_SUBCATEGORY         ASC
)
         CLUSTER;



CREATE UNIQUE INDEX XTP27203 ON FILE_NOTE
(
        N_FNTEXT_ID           ASC, 
        N_FILE_NTE_ID         ASC, 
        D_FINAL_ON            ASC, 
        D_CREATE_TS           ASC, 
        C_SUBCATEGORY         ASC
);



CREATE UNIQUE INDEX XTP27204 ON FILE_NOTE
(
        N_ORG_ENTY_ID         ASC, 
        C_DRAFT_IND           ASC, 
        N_CLAIM_ID            ASC, 
        D_FINAL_ON            ASC, 
        D_CREATE_TS           ASC, 
        C_SUBCATEGORY         ASC, 
        N_FILE_NTE_ID         ASC
);



CREATE INDEX XTP27209 ON FILE_NOTE
(
        N_FN_ATCH_ID          ASC
);



ALTER TABLE FILE_NOTE
ADD CONSTRAINT XTP27201  PRIMARY KEY (N_FILE_NTE_ID);



ALTER TABLE FILE_NOTE
ADD CONSTRAINT RTP22212  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



ALTER TABLE FILE_NOTE
ADD CONSTRAINT RTP30014  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE SET NULL;



ALTER TABLE FILE_NOTE
ADD CONSTRAINT RTP31320  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE FILE_NOTE
ADD CONSTRAINT RTP27301  FOREIGN KEY (N_FNTEXT_ID)
                REFERENCES FILE_NOTE_TEXT  (N_FNTEXT_ID)
                ON DELETE RESTRICT;



ALTER TABLE FN_PARTICIPANTS
ADD CONSTRAINT RTP27201  FOREIGN KEY (N_FILE_NTE_ID)
                REFERENCES FILE_NOTE  (N_FILE_NTE_ID)
                ON DELETE RESTRICT;



ALTER TABLE FN_CATEGORY
ADD CONSTRAINT RTP27202  FOREIGN KEY (N_FILE_NTE_ID)
                REFERENCES FILE_NOTE  (N_FILE_NTE_ID)
                ON DELETE RESTRICT;



ALTER TABLE ENVELOPE
ADD CONSTRAINT RTP27203  FOREIGN KEY (N_FILE_NTE_ID)
                REFERENCES FILE_NOTE  (N_FILE_NTE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_FILE_ AFTER INSERT ON FILE_NOTE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE FILE_NOTE
      SET
        FILE_NOTE.N_LINE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM LINE
            WHERE
              new.N_LINE_ID = LINE.N_LINE_ID
        )
 ;

CREATE TRIGGER tI_FILE2 AFTER INSERT ON FILE_NOTE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE FILE_NOTE
      SET
        FILE_NOTE.N_FNTEXT_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM FILE_NOTE_TEXT
            WHERE
              new.N_FNTEXT_ID = FILE_NOTE_TEXT.N_FNTEXT_ID
        )
 ;

CREATE TRIGGER tI_FILE3 AFTER INSERT ON FILE_NOTE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE FILE_NOTE
      SET
        FILE_NOTE.N_FN_ATCH_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ATTACH_METADATA
            WHERE
              new.N_FN_ATCH_ID = ATTACH_METADATA.ATTACHMENT_ID
        )
 ;

CREATE TRIGGER tD_FILE_ AFTER DELETE ON FILE_NOTE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ENVELOPE WHERE ENVELOPE.N_FILE_NTE_ID = old.N_FILE_NTE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete FILE_NOTE because ENVELOPE exists.');
        END
 ;

CREATE TRIGGER tD_FILE2 AFTER DELETE ON FILE_NOTE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM FN_CATEGORY WHERE FN_CATEGORY.N_FILE_NTE_ID =
old.N_FILE_NTE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete FILE_NOTE because FN_CATEGORY exists.');
        END
 ;

CREATE TRIGGER tD_FILE3 AFTER DELETE ON FILE_NOTE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM FN_PARTICIPANTS WHERE FN_PARTICIPANTS.N_FILE_NTE_ID =
old.N_FILE_NTE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete FILE_NOTE because FN_PARTICIPANTS exists.');
        END
 ;

CREATE TRIGGER tU_FILE_ AFTER UPDATE ON FILE_NOTE
     FOR EACH ROW MODE DB2SQL
    UPDATE FILE_NOTE
      SET
        FILE_NOTE.N_LINE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM LINE
            WHERE
              new.N_LINE_ID = LINE.N_LINE_ID
        )
 ;


   

CREATE TABLE FILE_NOTE_TEXT
(
        N_FNTEXT_ID           CHAR(16) NOT NULL, 
        T_FILE_NTE_DESC       VARCHAR(8000) NOT NULL
);



CREATE UNIQUE INDEX XTP27301 ON FILE_NOTE_TEXT
(
        N_FNTEXT_ID           ASC
);



ALTER TABLE FILE_NOTE_TEXT
ADD CONSTRAINT XTP27301  PRIMARY KEY (N_FNTEXT_ID);



ALTER TABLE FILE_NOTE
ADD CONSTRAINT RTP27301  FOREIGN KEY (N_FNTEXT_ID)
                REFERENCES FILE_NOTE_TEXT  (N_FNTEXT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tD_FILE_ AFTER DELETE ON FILE_NOTE_TEXT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM FILE_NOTE WHERE FILE_NOTE.N_FNTEXT_ID = old.N_FNTEXT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete FILE_NOTE_TEXT because FILE_NOTE exists.');
        END
 ;


   

CREATE TABLE FINANCIAL_ENTITY
(
        N_FIN_ENT_ID          CHAR(16) NOT NULL, 
        N_INV_ID              CHAR(16) NOT NULL, 
        N_RGN_ORG_ENTY        CHAR(16) NOT NULL DEFAULT x'05', 
        N_PRFMR_ORG_ENTY      CHAR(16) NOT NULL, 
        C_FIN_ENT_TYP         CHAR(5) NOT NULL, 
        C_FIN_ENT_STAT        CHAR(5) NOT NULL, 
        A_FIN_ENT_AMT         DECIMAL(19, 6), 
        C_CURRENCY_UOM        CHAR(5) NOT NULL, 
        C_PREF_CURR_UOM       CHAR(5) NOT NULL, 
        D_CONV_DT             TIMESTAMP NOT NULL, 
        C_LANGUAGE            CHAR(5) NOT NULL, 
        D_SCHED_DT            TIMESTAMP NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_RECOURSE_CORR_ID    CHAR(16) NOT NULL DEFAULT x'05'
);



CREATE UNIQUE INDEX XTP27401 ON FINANCIAL_ENTITY
(
        N_FIN_ENT_ID          ASC
);



CREATE UNIQUE INDEX XTP27403 ON FINANCIAL_ENTITY
(
        N_FIN_ENT_ID          ASC, 
        C_FIN_ENT_TYP         ASC, 
        C_FIN_ENT_STAT        ASC, 
        C_RCD_DEL             ASC
)
         CLUSTER;



CREATE UNIQUE INDEX XTP27406 ON FINANCIAL_ENTITY
(
        N_FIN_ENT_ID          ASC, 
        C_FIN_ENT_STAT        ASC, 
        C_RCD_DEL             ASC
);



CREATE UNIQUE INDEX XTP27409 ON FINANCIAL_ENTITY
(
        N_RECOURSE_CORR_ID    ASC, 
        N_FIN_ENT_ID          ASC
);



CREATE INDEX XTP27402 ON FINANCIAL_ENTITY
(
        N_INV_ID              ASC
);



CREATE INDEX XTP27405 ON FINANCIAL_ENTITY
(
        N_RGN_ORG_ENTY        ASC
);



CREATE INDEX XTP27411 ON FINANCIAL_ENTITY
(
        C_FIN_ENT_STAT        ASC, 
        D_SCHED_DT            ASC, 
        N_FIN_ENT_ID          ASC
);



CREATE INDEX XTP27412 ON FINANCIAL_ENTITY
(
        N_FIN_ENT_ID          ASC, 
        C_FIN_ENT_STAT        ASC, 
        C_FIN_ENT_TYP         ASC, 
        C_RCD_DEL             ASC, 
        D_CREATE_TS           ASC, 
        N_RECOURSE_CORR_ID    ASC
);



ALTER TABLE FINANCIAL_ENTITY
ADD CONSTRAINT XTP27401  PRIMARY KEY (N_FIN_ENT_ID);



ALTER TABLE FINANCIAL_ENTITY
ADD CONSTRAINT RTP31310  FOREIGN KEY (N_RGN_ORG_ENTY)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE FINANCIAL_ENTITY
ADD CONSTRAINT RTP34202  FOREIGN KEY (N_RECOURSE_CORR_ID)
                REFERENCES RECOURSE_CORRESPON  (N_RECOURSE_CORR_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECEIPT
ADD CONSTRAINT RTP27406  FOREIGN KEY (N_RCPT_ID)
                REFERENCES FINANCIAL_ENTITY  (N_FIN_ENT_ID)
                ON DELETE RESTRICT;



ALTER TABLE OUT_INVOICE
ADD CONSTRAINT RTP27408  FOREIGN KEY (N_OUT_INVOICE_ID)
                REFERENCES FINANCIAL_ENTITY  (N_FIN_ENT_ID)
                ON DELETE RESTRICT;



ALTER TABLE PAYMENT
ADD CONSTRAINT RTP27405  FOREIGN KEY (N_PYMNT_ID)
                REFERENCES FINANCIAL_ENTITY  (N_FIN_ENT_ID)
                ON DELETE RESTRICT;



ALTER TABLE RESERVE
ADD CONSTRAINT RTP27407  FOREIGN KEY (N_ESTIMATE_ID)
                REFERENCES FINANCIAL_ENTITY  (N_FIN_ENT_ID)
                ON DELETE RESTRICT;



ALTER TABLE FINANCIAL_TX_GRP
ADD CONSTRAINT RTP27404  FOREIGN KEY (N_FIN_ENT_ID)
                REFERENCES FINANCIAL_ENTITY  (N_FIN_ENT_ID)
                ON DELETE RESTRICT;



ALTER TABLE BI_BOGFOER
ADD CONSTRAINT RTP27401  FOREIGN KEY (TRSP_ID)
                REFERENCES FINANCIAL_ENTITY  (N_FIN_ENT_ID)
                ON DELETE RESTRICT;



ALTER TABLE BI_CHECKUD
ADD CONSTRAINT RTP27402  FOREIGN KEY (TRSP_ID)
                REFERENCES FINANCIAL_ENTITY  (N_FIN_ENT_ID)
                ON DELETE RESTRICT;



ALTER TABLE BI_EPAYMNT
ADD CONSTRAINT RTP27403  FOREIGN KEY (TRSP_ID)
                REFERENCES FINANCIAL_ENTITY  (N_FIN_ENT_ID)
                ON DELETE RESTRICT;



ALTER TABLE DEDUC_DIFFERENCE
ADD CONSTRAINT RTP27409  FOREIGN KEY (N_FIN_ENT_ID)
                REFERENCES FINANCIAL_ENTITY  (N_FIN_ENT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_FINAN AFTER INSERT ON FINANCIAL_ENTITY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE FINANCIAL_ENTITY
      SET
        FINANCIAL_ENTITY.N_RECOURSE_CORR_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM RECOURSE_CORRESPON
            WHERE
              new.N_RECOURSE_CORR_ID = RECOURSE_CORRESPON.N_RECOURSE_CORR_ID
        )
 ;

CREATE TRIGGER tI_FINA2 AFTER INSERT ON FINANCIAL_ENTITY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE FINANCIAL_ENTITY
      SET
        FINANCIAL_ENTITY.N_RGN_ORG_ENTY = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ORG_ENTITY
            WHERE
              new.N_RGN_ORG_ENTY = ORG_ENTITY.N_ORG_ENTY_ID
        )
 ;

CREATE TRIGGER tI_FINA3 AFTER INSERT ON FINANCIAL_ENTITY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE FINANCIAL_ENTITY
      SET
        FINANCIAL_ENTITY.N_RGN_ORG_ENTY = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ORG_ENTITY
            WHERE
              new.N_RGN_ORG_ENTY = ORG_ENTITY.N_ORG_ENTY_ID
        )
 ;

CREATE TRIGGER tI_FINA4 AFTER INSERT ON FINANCIAL_ENTITY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE FINANCIAL_ENTITY
      SET
        FINANCIAL_ENTITY.N_INV_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INC_INVOICE
            WHERE
              new.N_INV_ID = INC_INVOICE.N_INC_INVOICE_ID
        )
 ;

CREATE TRIGGER tD_FINAN AFTER DELETE ON FINANCIAL_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM BI_NEMKONTO_PAYMNT WHERE BI_NEMKONTO_PAYMNT.TRSP_ID =
old.N_FIN_ENT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete FINANCIAL_ENTITY because BI_NEMKONTO_PAYMNT exists.');

        END
 ;

CREATE TRIGGER tD_FINA2 AFTER DELETE ON FINANCIAL_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM DEDUC_DIFFERENCE WHERE DEDUC_DIFFERENCE.N_FIN_ENT_ID =
old.N_FIN_ENT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete FINANCIAL_ENTITY because DEDUC_DIFFERENCE exists.');
        END
 ;

CREATE TRIGGER tD_FINA3 AFTER DELETE ON FINANCIAL_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM BI_EPAYMNT WHERE BI_EPAYMNT.TRSP_ID = old.N_FIN_ENT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete FINANCIAL_ENTITY because BI_EPAYMNT exists.');
        END
 ;

CREATE TRIGGER tD_FINA4 AFTER DELETE ON FINANCIAL_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM BI_CHECKUD WHERE BI_CHECKUD.TRSP_ID = old.N_FIN_ENT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete FINANCIAL_ENTITY because BI_CHECKUD exists.');
        END
 ;

CREATE TRIGGER tD_FINA5 AFTER DELETE ON FINANCIAL_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM BI_BOGFOER WHERE BI_BOGFOER.TRSP_ID = old.N_FIN_ENT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete FINANCIAL_ENTITY because BI_BOGFOER exists.');
        END
 ;

CREATE TRIGGER tD_FINA6 AFTER DELETE ON FINANCIAL_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM FINANCIAL_TX_GRP WHERE FINANCIAL_TX_GRP.N_FIN_ENT_ID =
old.N_FIN_ENT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete FINANCIAL_ENTITY because FINANCIAL_TX_GRP exists.');
        END
 ;

CREATE TRIGGER tD_FINA7 AFTER DELETE ON FINANCIAL_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RESERVE WHERE RESERVE.N_ESTIMATE_ID = old.N_FIN_ENT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete FINANCIAL_ENTITY because RESERVE exists.');
        END
 ;

CREATE TRIGGER tD_FINA8 AFTER DELETE ON FINANCIAL_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PAYMENT WHERE PAYMENT.N_PYMNT_ID = old.N_FIN_ENT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete FINANCIAL_ENTITY because PAYMENT exists.');
        END
 ;

CREATE TRIGGER tD_FINA9 AFTER DELETE ON FINANCIAL_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM OUT_INVOICE WHERE OUT_INVOICE.N_OUT_INVOICE_ID =
old.N_FIN_ENT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete FINANCIAL_ENTITY because OUT_INVOICE exists.');
        END
 ;

CREATE TRIGGER tD_FIN10 AFTER DELETE ON FINANCIAL_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECEIPT WHERE RECEIPT.N_RCPT_ID = old.N_FIN_ENT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete FINANCIAL_ENTITY because RECEIPT exists.');
        END
 ;

CREATE TRIGGER tU_FINAN AFTER UPDATE ON FINANCIAL_ENTITY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM FINANCIAL_ENTITY WHERE new.N_FIN_ENT_ID <> old.N_FIN_ENT_ID))
AND
     (0 < (SELECT count(*) FROM FINANCIAL_TX_GRP WHERE FINANCIAL_TX_GRP.N_FIN_ENT_ID =
old.N_FIN_ENT_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update FINANCIAL_ENTITY because FINANCIAL_TX_GRP exists.');

        END
 ;

CREATE TRIGGER tU_FINA2 AFTER UPDATE ON FINANCIAL_ENTITY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM FINANCIAL_ENTITY WHERE new.N_FIN_ENT_ID <> old.N_FIN_ENT_ID))
AND
     (0 < (SELECT count(*) FROM RESERVE WHERE RESERVE.N_ESTIMATE_ID = old.N_FIN_ENT_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update FINANCIAL_ENTITY because RESERVE exists.');
        END
 ;

CREATE TRIGGER tU_FINA3 AFTER UPDATE ON FINANCIAL_ENTITY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM FINANCIAL_ENTITY WHERE new.N_FIN_ENT_ID <> old.N_FIN_ENT_ID))
AND
     (0 < (SELECT count(*) FROM PAYMENT WHERE PAYMENT.N_PYMNT_ID = old.N_FIN_ENT_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update FINANCIAL_ENTITY because PAYMENT exists.');
        END
 ;


   

CREATE TABLE FINANCIAL_TX
(
        N_FIN_TX_ID           CHAR(16) NOT NULL, 
        N_FIN_DTL_ID          CHAR(16) NOT NULL, 
        C_FIN_ENT_TYP         CHAR(5) NOT NULL, 
        N_FIN_TX_GRP_ID       CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        C_FIN_TX_ENTRY_TYP    CHAR(5) NOT NULL, 
        A_FIN_TX_AMT          DECIMAL(19, 6), 
        C_CURRENCY_UOM        CHAR(5) NOT NULL, 
        C_PREF_CURR_UOM       CHAR(5) NOT NULL, 
        D_CONV_DT             TIMESTAMP NOT NULL, 
        D_FIN_TX_POST_DT      TIMESTAMP NOT NULL, 
        C_SERVICE             CHAR(5) NOT NULL, 
        C_SRVC_CTGY_TYP       CHAR(5) NOT NULL, 
        C_MEDICAL_EVAL        CHAR(5) NOT NULL, 
        C_INACTIVE_IND        CHAR(1) NOT NULL, 
        C_INACTIVE_RSN        CHAR(5) NOT NULL, 
        C_POSTING_CODE        CHAR(6) NOT NULL, 
        N_DEBIT_ACC           CHAR(6) NOT NULL, 
        N_CREDIT_ACC          CHAR(6) NOT NULL, 
        D_BOOKKEEPING_TS      TIMESTAMP NOT NULL, 
        C_SYS_POSTING_CODE    CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_TAX_REPORTABLE      CHAR(5) NOT NULL DEFAULT '', 
        C_COST_IND            CHAR(1) NOT NULL DEFAULT 'N'
);



CREATE UNIQUE INDEX XTP27501 ON FINANCIAL_TX
(
        N_FIN_TX_ID           ASC
);



CREATE INDEX XTP27503 ON FINANCIAL_TX
(
        N_FIN_DTL_ID          ASC
);



CREATE INDEX XTP27504 ON FINANCIAL_TX
(
        N_FIN_TX_GRP_ID       ASC, 
        C_RCD_DEL             ASC, 
        C_INACTIVE_IND        ASC
);



CREATE INDEX XTP27506 ON FINANCIAL_TX
(
        D_LAST_UPDT_TS        ASC
)
         CLUSTER;



CREATE INDEX XTP27507 ON FINANCIAL_TX
(
        D_FIN_TX_POST_DT      DESC
);



ALTER TABLE FINANCIAL_TX
ADD CONSTRAINT XTP27501  PRIMARY KEY (N_FIN_TX_ID);



ALTER TABLE FINANCIAL_TX
ADD CONSTRAINT RTP27601  FOREIGN KEY (N_FIN_TX_GRP_ID)
                REFERENCES FINANCIAL_TX_GRP  (N_FIN_TX_GRP_ID)
                ON DELETE RESTRICT;



ALTER TABLE FINANCIAL_TX
ADD CONSTRAINT RTP30009  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE JOURNAL_ENTRY
ADD CONSTRAINT RTP27501  FOREIGN KEY (N_FIN_TX_ID)
                REFERENCES FINANCIAL_TX  (N_FIN_TX_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_FINAN AFTER INSERT ON FINANCIAL_TX
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE FINANCIAL_TX
      SET
        FINANCIAL_TX.N_LINE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM LINE
            WHERE
              new.N_LINE_ID = LINE.N_LINE_ID
        )
 ;

CREATE TRIGGER tI_FINA2 AFTER INSERT ON FINANCIAL_TX
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM FINANCIAL_TX_GRP WHERE new.N_FIN_TX_GRP_ID =
FINANCIAL_TX_GRP.N_FIN_TX_GRP_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert FINANCIAL_TX because FINANCIAL_TX_GRP does not
exist.');
        END
 ;

CREATE TRIGGER tD_FINAN AFTER DELETE ON FINANCIAL_TX
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM JOURNAL_ENTRY WHERE JOURNAL_ENTRY.N_FIN_TX_ID =
old.N_FIN_TX_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete FINANCIAL_TX because JOURNAL_ENTRY exists.');
        END
 ;

CREATE TRIGGER tU_FINAN AFTER UPDATE ON FINANCIAL_TX
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM FINANCIAL_TX WHERE new.N_FIN_TX_ID <> old.N_FIN_TX_ID)) AND
     (0 < (SELECT count(*) FROM JOURNAL_ENTRY WHERE JOURNAL_ENTRY.N_FIN_TX_ID = old.N_FIN_TX_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update FINANCIAL_TX because JOURNAL_ENTRY exists.');
        END
 ;

CREATE TRIGGER tU_FINA2 AFTER UPDATE ON FINANCIAL_TX
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM FINANCIAL_TX_GRP WHERE new.N_FIN_TX_GRP_ID =
FINANCIAL_TX_GRP.N_FIN_TX_GRP_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update FINANCIAL_TX because FINANCIAL_TX_GRP does not
exist.');
        END
 ;


   

CREATE TABLE FINANCIAL_TX_GRP
(
        N_FIN_TX_GRP_ID       CHAR(16) NOT NULL, 
        N_FIN_ENT_ID          CHAR(16) NOT NULL, 
        D_PROCESSED_TS        TIMESTAMP NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        D_RELEASED_DT         TIMESTAMP NOT NULL, 
        C_FIN_TX_GRP_STAT     CHAR(5) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_FIN_TX_GRP_RSN      CHAR(5) NOT NULL, 
        D_SCHED_DT            TIMESTAMP NOT NULL, 
        N_CREATE_UID          CHAR(16) NOT NULL, 
        C_FT_REASON           CHAR(5) NOT NULL, 
        T_FT_REASON_DESC      CHAR(254) NOT NULL
);



CREATE UNIQUE INDEX XTP27601 ON FINANCIAL_TX_GRP
(
        N_FIN_TX_GRP_ID       ASC
);



CREATE INDEX XTP27602 ON FINANCIAL_TX_GRP
(
        N_FIN_ENT_ID          ASC, 
        D_LAST_UPDT_TS        ASC, 
        C_FIN_TX_GRP_STAT     ASC, 
        C_RCD_DEL             ASC
);



CREATE INDEX XTP27604 ON FINANCIAL_TX_GRP
(
        D_LAST_UPDT_TS        ASC
)
         CLUSTER;



CREATE INDEX XTP27605 ON FINANCIAL_TX_GRP
(
        D_SCHED_DT            DESC, 
        C_FIN_TX_GRP_STAT     ASC, 
        C_RCD_DEL             ASC
);



CREATE INDEX XTP27606 ON FINANCIAL_TX_GRP
(
        C_FIN_TX_GRP_STAT     ASC, 
        C_RCD_DEL             ASC, 
        D_SCHED_DT            ASC, 
        N_FIN_TX_GRP_ID       ASC, 
        N_FIN_ENT_ID          ASC
);



CREATE INDEX XTP27607 ON FINANCIAL_TX_GRP
(
        D_SCHED_DT            ASC, 
        C_FIN_TX_GRP_STAT     ASC, 
        C_RCD_DEL             ASC, 
        N_FIN_TX_GRP_ID       ASC, 
        N_FIN_ENT_ID          ASC
);



ALTER TABLE FINANCIAL_TX_GRP
ADD CONSTRAINT XTP27601  PRIMARY KEY (N_FIN_TX_GRP_ID);



ALTER TABLE FINANCIAL_TX_GRP
ADD CONSTRAINT RTP27404  FOREIGN KEY (N_FIN_ENT_ID)
                REFERENCES FINANCIAL_ENTITY  (N_FIN_ENT_ID)
                ON DELETE RESTRICT;



ALTER TABLE FINANCIAL_TX_GRP
ADD CONSTRAINT RTP31311  FOREIGN KEY (N_CREATE_UID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE BOOKKEEPING
ADD CONSTRAINT RTP27602  FOREIGN KEY (N_FIN_TX_GRP_ID)
                REFERENCES FINANCIAL_TX_GRP  (N_FIN_TX_GRP_ID)
                ON DELETE RESTRICT;



ALTER TABLE FINANCIAL_TX
ADD CONSTRAINT RTP27601  FOREIGN KEY (N_FIN_TX_GRP_ID)
                REFERENCES FINANCIAL_TX_GRP  (N_FIN_TX_GRP_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_FINAN AFTER INSERT ON FINANCIAL_TX_GRP
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE FINANCIAL_TX_GRP
      SET
        FINANCIAL_TX_GRP.N_CREATE_UID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ORG_ENTITY
            WHERE
              new.N_CREATE_UID = ORG_ENTITY.N_ORG_ENTY_ID
        )
 ;

CREATE TRIGGER tI_FINA2 AFTER INSERT ON FINANCIAL_TX_GRP
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM FINANCIAL_ENTITY WHERE new.N_FIN_ENT_ID =
FINANCIAL_ENTITY.N_FIN_ENT_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert FINANCIAL_TX_GRP because FINANCIAL_ENTITY does not
exist.');
        END
 ;

CREATE TRIGGER tD_FINAN AFTER DELETE ON FINANCIAL_TX_GRP
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM FINANCIAL_TX WHERE FINANCIAL_TX.N_FIN_TX_GRP_ID =
old.N_FIN_TX_GRP_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete FINANCIAL_TX_GRP because FINANCIAL_TX exists.');
        END
 ;

CREATE TRIGGER tD_FINA2 AFTER DELETE ON FINANCIAL_TX_GRP
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM BOOKKEEPING WHERE BOOKKEEPING.N_FIN_TX_GRP_ID =
old.N_FIN_TX_GRP_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete FINANCIAL_TX_GRP because BOOKKEEPING exists.');
        END
 ;

CREATE TRIGGER tU_FINAN AFTER UPDATE ON FINANCIAL_TX_GRP
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM FINANCIAL_TX_GRP WHERE new.N_FIN_TX_GRP_ID <>
old.N_FIN_TX_GRP_ID)) AND
     (0 < (SELECT count(*) FROM FINANCIAL_TX WHERE FINANCIAL_TX.N_FIN_TX_GRP_ID =
old.N_FIN_TX_GRP_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update FINANCIAL_TX_GRP because FINANCIAL_TX exists.');
        END
 ;

CREATE TRIGGER tU_FINA2 AFTER UPDATE ON FINANCIAL_TX_GRP
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM FINANCIAL_ENTITY WHERE new.N_FIN_ENT_ID =
FINANCIAL_ENTITY.N_FIN_ENT_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update FINANCIAL_TX_GRP because FINANCIAL_ENTITY does not
exist.');
        END
 ;


   

CREATE TABLE FLOOD
(
        N_FLOOD_ID            CHAR(16) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        C_FICO_NBR            CHAR(12) NOT NULL, 
        N_WATER_DEPTH         INTEGER, 
        C_LINEAR_UOM          CHAR(5) NOT NULL, 
        C_TEMP_PROTECT_IND    CHAR(1) NOT NULL, 
        C_CONT_REMOVE_IND     CHAR(1) NOT NULL, 
        A_PROP_AMT            DECIMAL(19, 6), 
        A_REPL_COST_AMT       DECIMAL(19, 6), 
        A_BUILD_LOSS_AMT      DECIMAL(19, 6), 
        A_CONT_LOSS_AMT       DECIMAL(19, 6), 
        C_REPL_COST_IND       CHAR(1) NOT NULL, 
        C_CURRENCY_UOM        CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP27701 ON FLOOD
(
        N_FLOOD_ID            ASC
);



ALTER TABLE FLOOD
ADD CONSTRAINT XTP27701  PRIMARY KEY (N_FLOOD_ID);



ALTER TABLE FLOOD
ADD CONSTRAINT RTP22213  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_FLOOD AFTER INSERT ON FLOOD
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM CLAIM WHERE new.N_CLAIM_ID = CLAIM.N_CLAIM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert FLOOD because CLAIM does not exist.');
        END
 ;

CREATE TRIGGER tU_FLOOD AFTER UPDATE ON FLOOD
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM CLAIM WHERE new.N_CLAIM_ID = CLAIM.N_CLAIM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update FLOOD because CLAIM does not exist.');
        END
 ;


   

CREATE TABLE FN_CATEGORY
(
        N_FILE_NTE_ID         CHAR(16) NOT NULL, 
        C_CATEGORY            CHAR(5) NOT NULL
);



CREATE UNIQUE INDEX XTP27801 ON FN_CATEGORY
(
        N_FILE_NTE_ID         ASC, 
        C_CATEGORY            ASC
);



CREATE INDEX XTP27802 ON FN_CATEGORY
(
        C_CATEGORY            ASC
);



ALTER TABLE FN_CATEGORY
ADD CONSTRAINT XTP27801  PRIMARY KEY (N_FILE_NTE_ID, C_CATEGORY);



ALTER TABLE FN_CATEGORY
ADD CONSTRAINT RTP27202  FOREIGN KEY (N_FILE_NTE_ID)
                REFERENCES FILE_NOTE  (N_FILE_NTE_ID)
                ON DELETE RESTRICT;



   

CREATE TABLE FN_PARTICIPANTS
(
        N_FILE_NTE_ID         CHAR(16) NOT NULL, 
        N_INS_INVL_ID         CHAR(16) NOT NULL
);



CREATE UNIQUE INDEX XTP27901 ON FN_PARTICIPANTS
(
        N_FILE_NTE_ID         ASC, 
        N_INS_INVL_ID         ASC
);



ALTER TABLE FN_PARTICIPANTS
ADD CONSTRAINT XTP27901  PRIMARY KEY (N_FILE_NTE_ID, N_INS_INVL_ID);



ALTER TABLE FN_PARTICIPANTS
ADD CONSTRAINT RTP27201  FOREIGN KEY (N_FILE_NTE_ID)
                REFERENCES FILE_NOTE  (N_FILE_NTE_ID)
                ON DELETE RESTRICT;



   

CREATE TABLE ICD9
(
        C_ICD9                CHAR(11) NOT NULL, 
        T_DESCRIPTION         CHAR(25) NOT NULL, 
        C_CATEGORY            CHAR(5) NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL
);



CREATE UNIQUE INDEX XTP28001 ON ICD9
(
        C_ICD9                ASC
);



ALTER TABLE ICD9
ADD CONSTRAINT XTP28001  PRIMARY KEY (C_ICD9);



   

CREATE TABLE IMPACT_ON_POLICY
(
        N_IMPACT_ON_POL_ID    CHAR(16) NOT NULL DEFAULT '', 
        N_CLAIM_ID            CHAR(16) NOT NULL DEFAULT '', 
        C_IMPACT_STATUS_CD    CHAR(5) NOT NULL DEFAULT '', 
        C_OWN_PAYMT_LETTER    CHAR(5) NOT NULL DEFAULT '', 
        C_OWN_PAYMT_ANSWER    CHAR(5) NOT NULL DEFAULT '', 
        C_POLICY_IMPACT_CD    CHAR(5) NOT NULL DEFAULT '', 
        C_POL_IMP_MAN_IND     CHAR(1) NOT NULL DEFAULT 'N', 
        C_CONSEQUENCE_CODE    CHAR(2) NOT NULL DEFAULT '', 
        A_W_OWN_PAYMNT_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_W_OWN_PAYMNT_UOM    CHAR(5) NOT NULL DEFAULT '', 
        A_LOSS_BONUS_AMT      DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_LOSS_BONUS_UOM      CHAR(5) NOT NULL DEFAULT '', 
        A_DEDUCTIBLE_AMT      DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_DEDUCTIBLE_UOM      CHAR(5) NOT NULL DEFAULT '', 
        A_WO_OWN_PAYMT_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_WO_OWN_PAYMT_UOM    CHAR(5) NOT NULL DEFAULT '', 
        C_AUT_LTR_SENT_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0, 
        D_INFORCE_DT          TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        T_PRICE_STEP_DOWN     CHAR(2) NOT NULL DEFAULT x'05', 
        T_PRICE_STEP_UP       CHAR(2) NOT NULL DEFAULT x'05', 
        T_OLD_PRICE_STEP      CHAR(2) NOT NULL DEFAULT x'05', 
        T_NEW_PRICE_STEP      CHAR(2) NOT NULL DEFAULT x'05'
);



CREATE UNIQUE INDEX XTP22301 ON IMPACT_ON_POLICY
(
        N_IMPACT_ON_POL_ID    ASC
);



ALTER TABLE IMPACT_ON_POLICY
ADD CONSTRAINT RTP22231  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_IMPAC AFTER INSERT ON IMPACT_ON_POLICY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE IMPACT_ON_POLICY
      SET
        IMPACT_ON_POLICY.N_CLAIM_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIM
            WHERE
              new.N_CLAIM_ID = CLAIM.N_CLAIM_ID
        )
 ;


   
    
    

CREATE TABLE INC_INVOICE
(
        N_INC_INVOICE_ID      CHAR(16) NOT NULL, 
        C_REPRICER            CHAR(5) NOT NULL, 
        C_REPRICER_CNTCT      CHAR(5) NOT NULL, 
        N_INV_NBR             VARCHAR(35) NOT NULL, 
        A_TOTAL_INV           DECIMAL(19, 6) NOT NULL, 
        C_CURRENCY_UOM        CHAR(5) NOT NULL, 
        C_PREF_CURR_UOM       CHAR(5) NOT NULL, 
        D_CONV_DT             TIMESTAMP NOT NULL, 
        M_REPRICER_NAME       CHAR(16) NOT NULL, 
        N_PROV_INS_INV_ID     CHAR(16) NOT NULL, 
        N_PAYEE_INS_INV_ID    CHAR(16) NOT NULL, 
        N_MAILTO_ADDR_ID      CHAR(16) NOT NULL, 
        C_PRVDR_POS_ZIP       CHAR(10) NOT NULL, 
        D_FROM_DT             TIMESTAMP NOT NULL, 
        D_TO_DT               TIMESTAMP NOT NULL, 
        D_INV_DT              TIMESTAMP NOT NULL, 
        C_INV_SRC             CHAR(5) NOT NULL, 
        N_TRANSMISSION_ID     CHAR(16) NOT NULL, 
        A_REPRICER_FEE        DECIMAL(19, 6), 
        C_REPRICER_INSTR      CHAR(5) NOT NULL, 
        N_REPRICER_RPT_SSN    CHAR(9) NOT NULL, 
        C_ICD9_1              CHAR(11) NOT NULL, 
        C_ICD9_2              CHAR(11) NOT NULL, 
        C_ICD9_3              CHAR(11) NOT NULL, 
        C_ICD9_4              CHAR(11) NOT NULL, 
        N_SRVC_RECIPNT_NBR    CHAR(15) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP40901 ON INC_INVOICE
(
        N_INC_INVOICE_ID      ASC
);



ALTER TABLE INC_INVOICE
ADD CONSTRAINT XTP40901  PRIMARY KEY (N_INC_INVOICE_ID);



ALTER TABLE INC_INVOICE
ADD CONSTRAINT RTP28303  FOREIGN KEY (N_PAYEE_INS_INV_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE INC_INVOICE_DTL
ADD CONSTRAINT RTP40903  FOREIGN KEY (N_INC_INVOICE_ID)
                REFERENCES INC_INVOICE  (N_INC_INVOICE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_INC_I AFTER INSERT ON INC_INVOICE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE INC_INVOICE
      SET
        INC_INVOICE.N_PAYEE_INS_INV_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INS_INVOLVEMENT
            WHERE
              new.N_PAYEE_INS_INV_ID = INS_INVOLVEMENT.N_INS_INVL_ID
        )
 ;

CREATE TRIGGER tD_INC_I AFTER DELETE ON INC_INVOICE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INC_INVOICE_DTL WHERE INC_INVOICE_DTL.N_INC_INVOICE_ID =
old.N_INC_INVOICE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INC_INVOICE because INC_INVOICE_DTL exists.');
        END
 ;

CREATE TRIGGER tD_INC_2 AFTER DELETE ON INC_INVOICE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM FINANCIAL_ENTITY WHERE FINANCIAL_ENTITY.N_INV_ID =
old.N_INC_INVOICE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INC_INVOICE because FINANCIAL_ENTITY exists.');
        END
 ;

CREATE TRIGGER tU_INC_I AFTER UPDATE ON INC_INVOICE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM INC_INVOICE WHERE new.N_INC_INVOICE_ID <>
old.N_INC_INVOICE_ID)) AND
     (0 < (SELECT count(*) FROM INC_INVOICE_DTL WHERE INC_INVOICE_DTL.N_INC_INVOICE_ID =
old.N_INC_INVOICE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INC_INVOICE because INC_INVOICE_DTL exists.');
        END
 ;


   

CREATE TABLE INC_INVOICE_DTL
(
        N_INC_INV_DTL_ID      CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        A_INV_DTL_BLD_AMT     DECIMAL(19, 6), 
        N_INV_DTL_NBR         CHAR(3) NOT NULL, 
        C_ICD9                CHAR(11) NOT NULL, 
        C_CPT                 CHAR(8) NOT NULL, 
        A_PREF_PRV_DISC       DECIMAL(19, 6), 
        A_REPRICER_FEE        DECIMAL(19, 6), 
        N_UNITS               INTEGER, 
        A_PER_UNIT            DECIMAL(19, 6), 
        A_INV_DTL_RPRCD       DECIMAL(19, 6), 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        T_CPT_DESC            CHAR(50) NOT NULL, 
        C_INV_DTL_STAT        CHAR(5) NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        T_INV_RSN_DESC        CHAR(30) NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        C_INV_RSN_CODE        CHAR(5) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        A_INV_UCR_AMT         DECIMAL(19, 6), 
        N_INC_INVOICE_ID      CHAR(16) NOT NULL
);



CREATE UNIQUE INDEX XTP41001 ON INC_INVOICE_DTL
(
        N_INC_INV_DTL_ID      ASC
);



CREATE INDEX XTP41002 ON INC_INVOICE_DTL
(
        N_INC_INV_DTL_ID      ASC, 
        C_RCD_DEL             ASC
);



ALTER TABLE INC_INVOICE_DTL
ADD CONSTRAINT XTP41001  PRIMARY KEY (N_INC_INV_DTL_ID);



ALTER TABLE INC_INVOICE_DTL
ADD CONSTRAINT RTP40903  FOREIGN KEY (N_INC_INVOICE_ID)
                REFERENCES INC_INVOICE  (N_INC_INVOICE_ID)
                ON DELETE RESTRICT;



ALTER TABLE INC_INVOICE_DTL
ADD CONSTRAINT RTP30029  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE PAYMENT_DTL
ADD CONSTRAINT RTP41003  FOREIGN KEY (N_INC_INV_DTL_ID)
                REFERENCES INC_INVOICE_DTL  (N_INC_INV_DTL_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_INC_I AFTER INSERT ON INC_INVOICE_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INC_INVOICE WHERE new.N_INC_INVOICE_ID =
INC_INVOICE.N_INC_INVOICE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert INC_INVOICE_DTL because INC_INVOICE does not
exist.');
        END
 ;

CREATE TRIGGER tI_INC_2 AFTER INSERT ON INC_INVOICE_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM LINE WHERE new.N_LINE_ID = LINE.N_LINE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert INC_INVOICE_DTL because LINE does not exist.');
        END
 ;

CREATE TRIGGER tD_INC_I AFTER DELETE ON INC_INVOICE_DTL
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PAYMENT_DTL WHERE PAYMENT_DTL.N_INC_INV_DTL_ID =
old.N_INC_INV_DTL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INC_INVOICE_DTL because PAYMENT_DTL exists.');
        END
 ;

CREATE TRIGGER tU_INC_I AFTER UPDATE ON INC_INVOICE_DTL
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM INC_INVOICE WHERE new.N_INC_INVOICE_ID =
INC_INVOICE.N_INC_INVOICE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INC_INVOICE_DTL because INC_INVOICE does not
exist.');
        END
 ;

CREATE TRIGGER tU_INC_2 AFTER UPDATE ON INC_INVOICE_DTL
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM LINE WHERE new.N_LINE_ID = LINE.N_LINE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INC_INVOICE_DTL because LINE does not exist.');
        END
 ;


   

CREATE TABLE INJ_COMP_REC_PYMNT
(
        N_INJ_C_REC_PAY_ID    CHAR(16) NOT NULL, 
        N_INJURY_COMP_ID      CHAR(16) NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        C_ACTIVE_IND          CHAR(1) NOT NULL DEFAULT 'Y', 
        C_SAP_STATUS          CHAR(5) NOT NULL DEFAULT '', 
        D_REVISION_DT         TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        N_ALLOWANCE_NUMBER    CHAR(12) NOT NULL DEFAULT '', 
        D_TRANSACTION_DT      TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        C_COMPANY_CODE        CHAR(5) NOT NULL DEFAULT '', 
        N_CREATED_DEPT        CHAR(4) NOT NULL DEFAULT '', 
        N_CREATED_WORKDEPT    CHAR(4) NOT NULL DEFAULT '', 
        N_LAST_DEPT_ID        CHAR(4) NOT NULL DEFAULT '', 
        N_LAST_WORKDEPT_ID    CHAR(4) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_BRAND_COMPANY_CD    CHAR(5) NOT NULL DEFAULT '', 
        C_BATCH_IND           CHAR(1) NOT NULL DEFAULT 'N', 
        C_REVERSAL_IND        CHAR(1) NOT NULL DEFAULT 'N', 
        C_FTP_ONLY_IND        CHAR(1) NOT NULL DEFAULT 'N'
);



CREATE UNIQUE INDEX XTP65001 ON INJ_COMP_REC_PYMNT
(
        N_INJ_C_REC_PAY_ID    ASC
);



CREATE INDEX XTP65005 ON INJ_COMP_REC_PYMNT
(
        N_INJURY_COMP_ID      ASC, 
        C_ACTIVE_IND          ASC, 
        C_RCD_DEL             ASC, 
        C_SAP_STATUS          ASC
);



ALTER TABLE INJ_COMP_REC_PYMNT
ADD CONSTRAINT XTP65001  PRIMARY KEY (N_INJ_C_REC_PAY_ID);



ALTER TABLE INJ_COMP_REC_PYMNT
ADD CONSTRAINT RTP45311  FOREIGN KEY (N_INJURY_COMP_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



ALTER TABLE INJ_COMP_REC_PYMNT
ADD CONSTRAINT R_483  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE SUB_INJ_CMP_RECPAY
ADD CONSTRAINT RTP65001  FOREIGN KEY (N_INJ_C_REC_PAY_ID)
                REFERENCES INJ_COMP_REC_PYMNT  (N_INJ_C_REC_PAY_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_INJ_C AFTER INSERT ON INJ_COMP_REC_PYMNT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE INJ_COMP_REC_PYMNT
      SET
        INJ_COMP_REC_PYMNT.N_ORG_ENTY_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ORG_ENTITY
            WHERE
              new.N_ORG_ENTY_ID = ORG_ENTITY.N_ORG_ENTY_ID
        )
 ;

CREATE TRIGGER tI_INJ_2 AFTER INSERT ON INJ_COMP_REC_PYMNT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INJURY_COMP WHERE new.N_INJURY_COMP_ID =
INJURY_COMP.N_INJURY_COMP_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert INJ_COMP_REC_PYMNT because INJURY_COMP does not
exist.');
        END
 ;

CREATE TRIGGER tD_INJ_C AFTER DELETE ON INJ_COMP_REC_PYMNT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM SUB_INJ_CMP_RECPAY WHERE SUB_INJ_CMP_RECPAY.N_INJ_C_REC_PAY_ID =
old.N_INJ_C_REC_PAY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INJ_COMP_REC_PYMNT because SUB_INJ_CMP_RECPAY
exists.');
        END
 ;


   

CREATE TABLE INJ_TREATMENT_XREF
(
        N_INJURY_XREF_ID      CHAR(16) NOT NULL, 
        N_TREATMENT_ID        CHAR(16) NOT NULL, 
        N_INJURY_ID           CHAR(16) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP28101 ON INJ_TREATMENT_XREF
(
        N_INJURY_XREF_ID      ASC
);



CREATE UNIQUE INDEX XTP28102 ON INJ_TREATMENT_XREF
(
        N_INJURY_ID           ASC, 
        N_TREATMENT_ID        ASC, 
        N_INJURY_XREF_ID      ASC
)
         CLUSTER;



CREATE UNIQUE INDEX XTP28103 ON INJ_TREATMENT_XREF
(
        N_TREATMENT_ID        ASC, 
        N_INJURY_ID           ASC, 
        N_INJURY_XREF_ID      ASC
);



ALTER TABLE INJ_TREATMENT_XREF
ADD CONSTRAINT XTP28101  PRIMARY KEY (N_INJURY_XREF_ID);



ALTER TABLE INJ_TREATMENT_XREF
ADD CONSTRAINT RTP28201  FOREIGN KEY (N_INJURY_ID)
                REFERENCES INJURY  (N_INJURY_ID)
                ON DELETE RESTRICT;



ALTER TABLE INJ_TREATMENT_XREF
ADD CONSTRAINT RTP38402  FOREIGN KEY (N_TREATMENT_ID)
                REFERENCES TREATMENTS  (N_TREATMENT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_INJ_T AFTER INSERT ON INJ_TREATMENT_XREF
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM TREATMENTS WHERE new.N_TREATMENT_ID =
TREATMENTS.N_TREATMENT_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert INJ_TREATMENT_XREF because TREATMENTS does not
exist.');
        END
 ;

CREATE TRIGGER tI_INJ_2 AFTER INSERT ON INJ_TREATMENT_XREF
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INJURY WHERE new.N_INJURY_ID = INJURY.N_INJURY_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert INJ_TREATMENT_XREF because INJURY does not exist.');

        END
 ;

CREATE TRIGGER tU_INJ_T AFTER UPDATE ON INJ_TREATMENT_XREF
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM TREATMENTS WHERE new.N_TREATMENT_ID =
TREATMENTS.N_TREATMENT_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INJ_TREATMENT_XREF because TREATMENTS does not
exist.');
        END
 ;

CREATE TRIGGER tU_INJ_2 AFTER UPDATE ON INJ_TREATMENT_XREF
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM INJURY WHERE new.N_INJURY_ID = INJURY.N_INJURY_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INJ_TREATMENT_XREF because INJURY does not exist.');

        END
 ;


   

CREATE TABLE INJURY
(
        N_INJURY_ID           CHAR(16) NOT NULL, 
        C_ICD_CODE            CHAR(11) NOT NULL, 
        N_CLAIMANT_ROLE_ID    CHAR(16) NOT NULL, 
        N_REPORTED_BY_ID      CHAR(16) NOT NULL, 
        D_ONSET_DT            TIMESTAMP NOT NULL, 
        D_DATE_REPORTED       TIMESTAMP NOT NULL, 
        D_RESOLVED_DT         TIMESTAMP NOT NULL, 
        T_FINDINGS            CHAR(254) NOT NULL, 
        C_TRMNT_PROV_IND      CHAR(1) NOT NULL, 
        C_ACTIVE_IND          CHAR(1) NOT NULL, 
        C_DECISION_CODE       CHAR(5) NOT NULL, 
        C_PRIMARY_IND         CHAR(1) NOT NULL, 
        C_STATUS_CODE         CHAR(5) NOT NULL, 
        T_COMPLAINTS          CHAR(254) NOT NULL, 
        T_INJURY_DESC         CHAR(100) NOT NULL, 
        N_LAST_MAN_DEPT_ID    CHAR(4) NOT NULL, 
        N_LAST_WORKDEPT_ID    CHAR(5) NOT NULL, 
        N_CREATED_OE          CHAR(16) NOT NULL, 
        N_CREATED_DEPT        CHAR(4) NOT NULL, 
        N_CREATED_WORKDEPT    CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP28201 ON INJURY
(
        N_INJURY_ID           ASC
);



CREATE UNIQUE INDEX XTP28202 ON INJURY
(
        N_CLAIMANT_ROLE_ID    ASC, 
        N_INJURY_ID           ASC, 
        C_ICD_CODE            ASC
)
         CLUSTER;



ALTER TABLE INJURY
ADD CONSTRAINT XTP28201  PRIMARY KEY (N_INJURY_ID);



ALTER TABLE INJURY
ADD CONSTRAINT RTP23204  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE INJURY
ADD CONSTRAINT RTP28304  FOREIGN KEY (N_REPORTED_BY_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE INJ_TREATMENT_XREF
ADD CONSTRAINT RTP28201  FOREIGN KEY (N_INJURY_ID)
                REFERENCES INJURY  (N_INJURY_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_INJUR AFTER INSERT ON INJURY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE INJURY
      SET
        INJURY.N_REPORTED_BY_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INS_INVOLVEMENT
            WHERE
              new.N_REPORTED_BY_ID = INS_INVOLVEMENT.N_INS_INVL_ID
        )
 ;

CREATE TRIGGER tI_INJU2 AFTER INSERT ON INJURY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_CLAIMANT_ROLE_ID =
CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert INJURY because CLAIMANT_ROLE does not exist.');
        END
 ;

CREATE TRIGGER tD_INJUR AFTER DELETE ON INJURY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INJ_TREATMENT_XREF WHERE INJ_TREATMENT_XREF.N_INJURY_ID =
old.N_INJURY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INJURY because INJ_TREATMENT_XREF exists.');
        END
 ;

CREATE TRIGGER tU_INJUR AFTER UPDATE ON INJURY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM INJURY WHERE new.N_INJURY_ID <> old.N_INJURY_ID)) AND
     (0 < (SELECT count(*) FROM INJ_TREATMENT_XREF WHERE INJ_TREATMENT_XREF.N_INJURY_ID =
old.N_INJURY_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INJURY because INJ_TREATMENT_XREF exists.');
        END
 ;

CREATE TRIGGER tU_INJU2 AFTER UPDATE ON INJURY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_CLAIMANT_ROLE_ID =
CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INJURY because CLAIMANT_ROLE does not exist.');
        END
 ;


   

CREATE TABLE INJURY_COMP
(
        N_INJURY_COMP_ID      CHAR(16) NOT NULL DEFAULT '', 
        C_INJURY_ENT_TYPE     CHAR(5) NOT NULL DEFAULT '', 
        C_CALCULATION_TYPE    CHAR(5) NOT NULL DEFAULT '', 
        N_LINE_ID             CHAR(16) DEFAULT x'05', 
        T_COMMENTS            VARCHAR(700) DEFAULT NULL, 
        D_OFFER_DT            TIMESTAMP DEFAULT NULL, 
        D_INTEREST_DUE_DT     TIMESTAMP DEFAULT NULL, 
        A_CALC_AMT            DECIMAL(19, 6) DEFAULT 0, 
        C_CALC_UOM            CHAR(5) NOT NULL DEFAULT '', 
        A_ADJUSTED_AMT        DECIMAL(19, 6) DEFAULT NULL, 
        C_ADJUSTED_UOM        CHAR(5) NOT NULL DEFAULT '', 
        A_PAYABLE_AMT         DECIMAL(19, 6) DEFAULT NULL, 
        C_PAYABLE_UOM         CHAR(5) NOT NULL DEFAULT '', 
        C_ACTIVE_IND          CHAR(1) DEFAULT NULL, 
        N_AGE_AT_DOL          INTEGER DEFAULT NULL, 
        A_AGE_DEDUCT_AMT      DECIMAL(19, 6) DEFAULT NULL, 
        C_AGE_DED_UOM         CHAR(5) NOT NULL DEFAULT '', 
        C_SELF_INDUCED        CHAR(5) NOT NULL DEFAULT '', 
        A_SELF_IND_AMT        DECIMAL(19, 6) DEFAULT NULL, 
        C_SELF_IND_UOM        CHAR(5) NOT NULL DEFAULT '', 
        A_COMPENSATION        DECIMAL(19, 6) DEFAULT NULL, 
        C_COMPENSATION_UOM    CHAR(5) NOT NULL DEFAULT '', 
        D_DUE_DT              TIMESTAMP DEFAULT NULL, 
        N_CREATED_DEPT        VARCHAR(5) NOT NULL DEFAULT '', 
        N_CREATED_WORKDEPT    CHAR(4) NOT NULL DEFAULT '', 
        N_LAST_DEPT_ID        CHAR(4) NOT NULL DEFAULT '', 
        N_LAST_WORKDEPT_ID    CHAR(4) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0, 
        N_WORK_INJ_HIST_ID    CHAR(16) NOT NULL DEFAULT x'05', 
        C_COMPENSATION_TYP    CHAR(5) NOT NULL DEFAULT 'PC', 
        A_PREV_PAID_AMT       DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_PREV_PAID_UOM       CHAR(5) NOT NULL DEFAULT 'DKK', 
        C_GREENLAND_IND       CHAR(1) NOT NULL DEFAULT 'N', 
        D_LOSS_DT             TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        C_GENDER              CHAR(5) NOT NULL DEFAULT '', 
        D_DECISION_DT         TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        N_AGE_MONTH_AT_DOD    INTEGER NOT NULL DEFAULT 0, 
        A_DEATH_SUM           INTEGER NOT NULL DEFAULT 0, 
        C_DEATH_SUM_UOM       CHAR(5) NOT NULL DEFAULT 'DKK', 
        C_RECURRING_IND       CHAR(1) NOT NULL DEFAULT 'N', 
        C_1ST_DOD_LT_JUL99    CHAR(5) NOT NULL DEFAULT 'NA', 
        D_CONTROL_DT          TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        T_PART_CPR_NUMBER     CHAR(11) NOT NULL DEFAULT '', 
        N_PART_INS_INVL_ID    CHAR(16) NOT NULL DEFAULT '', 
        D_REVISION_DT         TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000'
);



CREATE UNIQUE INDEX XTP45301 ON INJURY_COMP
(
        N_INJURY_COMP_ID      ASC
)
         CLUSTER;



CREATE INDEX XTP45303 ON INJURY_COMP
(
        N_LINE_ID             ASC, 
        N_INJURY_COMP_ID      ASC
);



ALTER TABLE INJURY_COMP
ADD CONSTRAINT XTP45301  PRIMARY KEY (N_INJURY_COMP_ID);



ALTER TABLE INJURY_COMP
ADD CONSTRAINT RTP30034  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE INJURY_COMP
ADD CONSTRAINT RTP64301  FOREIGN KEY (N_WORK_INJ_HIST_ID)
                REFERENCES WORKER_INJURY_HIST  (N_WORK_INJ_HIST_ID)
                ON DELETE RESTRICT;



ALTER TABLE PERMANNT_DISABILTY
ADD CONSTRAINT RTP45304  FOREIGN KEY (N_PERM_DISABLTY_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



ALTER TABLE TREATMENT_PLAN
ADD CONSTRAINT RTP45302  FOREIGN KEY (N_TREATMNT_PLAN_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



ALTER TABLE RETURN_TO_WORK2
ADD CONSTRAINT RTP45307  FOREIGN KEY (N_RETURN_TO_WK2_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



ALTER TABLE LOSS_OF_EARNINGS
ADD CONSTRAINT RTP45303  FOREIGN KEY (N_LOSS_OF_EARN_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



ALTER TABLE SICKNESS_BENEFIT2
ADD CONSTRAINT RTP45306  FOREIGN KEY (N_SICKNESS_BEN2_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



ALTER TABLE PERM_LOSS_EARNING
ADD CONSTRAINT RTP45301  FOREIGN KEY (N_PERM_LOSS_EAR_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



ALTER TABLE LOSS_OF_PROVIDER
ADD CONSTRAINT RTP45305  FOREIGN KEY (N_LOSS_OF_PROVD_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



ALTER TABLE PAYMENT_DTL
ADD CONSTRAINT RTP45308  FOREIGN KEY (N_INJURY_COMP_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



ALTER TABLE OUT_INVOICE_DTL
ADD CONSTRAINT RTP45309  FOREIGN KEY (N_INJURY_COMP_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



ALTER TABLE WORKERS_LOSS_COMP
ADD CONSTRAINT RTP45310  FOREIGN KEY (N_WORK_LOSS_CMP_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



ALTER TABLE INJ_COMP_REC_PYMNT
ADD CONSTRAINT RTP45311  FOREIGN KEY (N_INJURY_COMP_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_INJUR AFTER INSERT ON INJURY_COMP
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE INJURY_COMP
      SET
        INJURY_COMP.N_WORK_INJ_HIST_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM WORKER_INJURY_HIST
            WHERE
              new.N_WORK_INJ_HIST_ID = WORKER_INJURY_HIST.N_WORK_INJ_HIST_ID
        )
 ;

CREATE TRIGGER tI_INJU2 AFTER INSERT ON INJURY_COMP
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE INJURY_COMP
      SET
        INJURY_COMP.N_LINE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM LINE
            WHERE
              new.N_LINE_ID = LINE.N_LINE_ID
        )
 ;

CREATE TRIGGER tD_INJUR AFTER DELETE ON INJURY_COMP
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INJ_COMP_REC_PYMNT WHERE INJ_COMP_REC_PYMNT.N_INJURY_COMP_ID =
old.N_INJURY_COMP_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INJURY_COMP because INJ_COMP_REC_PYMNT exists.');
        END
 ;

CREATE TRIGGER tD_INJU2 AFTER DELETE ON INJURY_COMP
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM WORKERS_LOSS_COMP WHERE WORKERS_LOSS_COMP.N_WORK_LOSS_CMP_ID =
old.N_INJURY_COMP_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INJURY_COMP because WORKERS_LOSS_COMP exists.');
        END
 ;

CREATE TRIGGER tD_INJU3 AFTER DELETE ON INJURY_COMP
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM OUT_INVOICE_DTL WHERE OUT_INVOICE_DTL.N_INJURY_COMP_ID =
old.N_INJURY_COMP_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INJURY_COMP because OUT_INVOICE_DTL exists.');
        END
 ;

CREATE TRIGGER tD_INJU4 AFTER DELETE ON INJURY_COMP
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PAYMENT_DTL WHERE PAYMENT_DTL.N_INJURY_COMP_ID =
old.N_INJURY_COMP_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INJURY_COMP because PAYMENT_DTL exists.');
        END
 ;

CREATE TRIGGER tD_INJU5 AFTER DELETE ON INJURY_COMP
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LOSS_OF_PROVIDER WHERE LOSS_OF_PROVIDER.N_LOSS_OF_PROVD_ID =
old.N_INJURY_COMP_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INJURY_COMP because LOSS_OF_PROVIDER exists.');
        END
 ;

CREATE TRIGGER tD_INJU6 AFTER DELETE ON INJURY_COMP
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PERM_LOSS_EARNING WHERE PERM_LOSS_EARNING.N_PERM_LOSS_EAR_ID =
old.N_INJURY_COMP_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INJURY_COMP because PERM_LOSS_EARNING exists.');
        END
 ;

CREATE TRIGGER tD_INJU7 AFTER DELETE ON INJURY_COMP
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM SICKNESS_BENEFIT2 WHERE SICKNESS_BENEFIT2.N_SICKNESS_BEN2_ID =
old.N_INJURY_COMP_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INJURY_COMP because SICKNESS_BENEFIT2 exists.');
        END
 ;

CREATE TRIGGER tD_INJU8 AFTER DELETE ON INJURY_COMP
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LOSS_OF_EARNINGS WHERE LOSS_OF_EARNINGS.N_LOSS_OF_EARN_ID =
old.N_INJURY_COMP_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INJURY_COMP because LOSS_OF_EARNINGS exists.');
        END
 ;

CREATE TRIGGER tD_INJU9 AFTER DELETE ON INJURY_COMP
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RETURN_TO_WORK2 WHERE RETURN_TO_WORK2.N_RETURN_TO_WK2_ID =
old.N_INJURY_COMP_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INJURY_COMP because RETURN_TO_WORK2 exists.');
        END
 ;

CREATE TRIGGER tD_INJ10 AFTER DELETE ON INJURY_COMP
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM TREATMENT_PLAN WHERE TREATMENT_PLAN.N_TREATMNT_PLAN_ID =
old.N_INJURY_COMP_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INJURY_COMP because TREATMENT_PLAN exists.');
        END
 ;

CREATE TRIGGER tD_INJ11 AFTER DELETE ON INJURY_COMP
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PERMANNT_DISABILTY WHERE PERMANNT_DISABILTY.N_PERM_DISABLTY_ID =
old.N_INJURY_COMP_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INJURY_COMP because PERMANNT_DISABILTY exists.');
        END
 ;


   

CREATE TABLE INJURY2
(
        N_INJURY2_ID          CHAR(16) NOT NULL DEFAULT '', 
        C_CASUALTY_INS_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_WORKERS_COMP_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_NO_SICK_BFIT_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_PATIENT_INJ_IND     CHAR(1) NOT NULL DEFAULT 'N', 
        C_HEALTH_INSUR_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_DIFF_MATTER_IND     CHAR(1) NOT NULL DEFAULT 'N', 
        C_INCAPA_INSUR_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        D_RETUR_TO_WORK_DT    TIMESTAMP DEFAULT NULL, 
        C_SENT_SCANCRASH      CHAR(5) NOT NULL DEFAULT '', 
        F_SCANCRASH_EES       DECIMAL(4, 2) DEFAULT NULL, 
        C_LOW_ENERGY          CHAR(5) NOT NULL DEFAULT '', 
        D_OBSOLESCENCE_DT     TIMESTAMP DEFAULT NULL, 
        N_CLAIMANT_ROLE_ID    CHAR(16) NOT NULL DEFAULT '', 
        D_KNOWLEDGE_DT        TIMESTAMP DEFAULT NULL, 
        C_SELF_INDUCED        CHAR(5) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0, 
        C_LIABILTY_INS_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_GREENLAND_IND       CHAR(1) NOT NULL DEFAULT 'N', 
        D_REVISION_DT         TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        D_DECISION_DT         TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        N_AGE_MONTH_AT_DOD    INTEGER NOT NULL DEFAULT 0, 
        C_INJURY_CATEGORY     CHAR(5) NOT NULL DEFAULT '', 
        C_PART_TIME_IND       CHAR(1) NOT NULL DEFAULT 'N'
);



CREATE UNIQUE INDEX XTP23301 ON INJURY2
(
        N_INJURY2_ID          ASC
)
         CLUSTER;



ALTER TABLE INJURY2
ADD CONSTRAINT XTP23301  PRIMARY KEY (N_INJURY2_ID);



ALTER TABLE INJURY2
ADD CONSTRAINT RTP23212  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE WORKERS_INJURY
ADD CONSTRAINT RTP23301  FOREIGN KEY (N_WORKER_INJURY_ID)
                REFERENCES INJURY2  (N_INJURY2_ID)
                ON DELETE RESTRICT;



ALTER TABLE SUPP_INJURY_AC_TRA
ADD CONSTRAINT RTP23302  FOREIGN KEY (N_SUPP_INJUR_AT_ID)
                REFERENCES INJURY2  (N_INJURY2_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_INJUR AFTER INSERT ON INJURY2
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE INJURY2
      SET
        INJURY2.N_CLAIMANT_ROLE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIMANT_ROLE
            WHERE
              new.N_CLAIMANT_ROLE_ID = CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID
        )
 ;

CREATE TRIGGER tD_INJUR AFTER DELETE ON INJURY2
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM SUPP_INJURY_AC_TRA WHERE SUPP_INJURY_AC_TRA.N_SUPP_INJUR_AT_ID =
old.N_INJURY2_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INJURY2 because SUPP_INJURY_AC_TRA exists.');
        END
 ;

CREATE TRIGGER tD_INJU2 AFTER DELETE ON INJURY2
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM WORKERS_INJURY WHERE WORKERS_INJURY.N_WORKER_INJURY_ID =
old.N_INJURY2_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INJURY2 because WORKERS_INJURY exists.');
        END
 ;


   

CREATE TABLE INS_INVOLVEMENT
(
        N_INS_INVL_ID         CHAR(16) NOT NULL, 
        N_ENTITY_ID           CHAR(16) NOT NULL, 
        N_CUSTOMER_NUMBER     CHAR(7) NOT NULL, 
        C_EFT_IND             CHAR(1) NOT NULL, 
        T_CONTACT_NOTE        CHAR(80) NOT NULL, 
        N_DRIVER_LICENSE      CHAR(20) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_ATTORNEY_IND        CHAR(1) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_PREF_CNCT_TYP       CHAR(5) NOT NULL, 
        T_CLAIM_EMAIL         CHAR(80) NOT NULL, 
        T_CLAIM_PHONE         CHAR(15) NOT NULL, 
        T_REF_NO              CHAR(80) NOT NULL, 
        T_ATTENTION           CHAR(80) NOT NULL, 
        N_EFT_REG_NO          CHAR(8) NOT NULL, 
        N_EFT_ACCOUNT_NO      CHAR(16) NOT NULL, 
        C_EFT_VERIFIED_IND    CHAR(1) NOT NULL, 
        C_EFT_CHANGED_IND     CHAR(1) NOT NULL, 
        C_MINOR_IND           CHAR(1) NOT NULL, 
        C_LANGUAGE_STYLE      CHAR(5) NOT NULL, 
        C_INSD_RLTNSHP        CHAR(5) NOT NULL, 
        N_RPT_DPNDT_UND_18    INTEGER, 
        T_CITATIONS_DESC      VARCHAR(254) NOT NULL, 
        C_SERVICE_UNIT_KT     CHAR(1) NOT NULL, 
        N_RPT_AGE             INTEGER, 
        C_STATUS              CHAR(5) NOT NULL, 
        D_MORTAGEE_NOTI_DT    TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        C_NO_LEGAL_CAP_IND    CHAR(1) NOT NULL DEFAULT '', 
        C_ALCOHOL             CHAR(5) NOT NULL DEFAULT '', 
        N_RPT2_AGE            INTEGER DEFAULT NULL, 
        C_VAT_REGISTER_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_VAT_REG_TYPE        CHAR(5) NOT NULL DEFAULT '', 
        A_VAT_PCT             DECIMAL(5, 2)
);



CREATE UNIQUE INDEX XTP28301 ON INS_INVOLVEMENT
(
        N_INS_INVL_ID         ASC
);



CREATE UNIQUE INDEX XTP28307 ON INS_INVOLVEMENT
(
        N_ENTITY_ID           ASC, 
        N_INS_INVL_ID         ASC, 
        C_RCD_DEL             ASC
);



CREATE UNIQUE INDEX XTP28303 ON INS_INVOLVEMENT
(
        N_CUSTOMER_NUMBER     ASC, 
        N_ENTITY_ID           ASC, 
        C_RCD_DEL             ASC, 
        N_INS_INVL_ID         ASC
);



CREATE INDEX XTP28302 ON INS_INVOLVEMENT
(
        N_ENTITY_ID           ASC, 
        C_RCD_DEL             ASC, 
        C_STATUS              ASC
);



CREATE INDEX XTP28312 ON INS_INVOLVEMENT
(
        D_LAST_UPDT_TS        ASC
)
         CLUSTER;



CREATE INDEX XTP28313 ON INS_INVOLVEMENT
(
        N_CUSTOMER_NUMBER     ASC, 
        N_INS_INVL_ID         ASC, 
        C_RCD_DEL             ASC, 
        C_STATUS              ASC, 
        N_ENTITY_ID           ASC, 
        N_EFT_REG_NO          ASC, 
        N_EFT_ACCOUNT_NO      ASC, 
        N_RPT_AGE             ASC
);



ALTER TABLE INS_INVOLVEMENT
ADD CONSTRAINT XTP28301  PRIMARY KEY (N_INS_INVL_ID);



ALTER TABLE INS_INVOLVEMENT
ADD CONSTRAINT RTP28405  FOREIGN KEY (N_ENTITY_ID)
                REFERENCES INSURANCE_ENTITY  (N_ENTITY_ID)
                ON DELETE RESTRICT;



ALTER TABLE SICKNESS_BENEFIT
ADD CONSTRAINT RTP28316  FOREIGN KEY (N_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE LOSS
ADD CONSTRAINT RTP28308  FOREIGN KEY (N_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE INVOLVEMENT_ROLE
ADD CONSTRAINT RTP28307  FOREIGN KEY (N_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE OUT_INVOICE_PAYOR
ADD CONSTRAINT RTP28317  FOREIGN KEY (N_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE DISABILITY
ADD CONSTRAINT RTP28306  FOREIGN KEY (N_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE SET NULL;



ALTER TABLE NEGOTIATION_ASSN
ADD CONSTRAINT RTP28309  FOREIGN KEY (N_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE CITATION
ADD CONSTRAINT RTP28305  FOREIGN KEY (N_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE RCOVRY_NEGOTIATION
ADD CONSTRAINT RTP28311  FOREIGN KEY (N_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE TREATMENTS
ADD CONSTRAINT RTP28313  FOREIGN KEY (N_PROVIDER_ROLE_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE SET NULL;



ALTER TABLE CCS_TASK
ADD CONSTRAINT RTP28302  FOREIGN KEY (N_TRG_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE CCS_TASK
ADD CONSTRAINT RTP28301  FOREIGN KEY (N_TRG_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE INC_INVOICE
ADD CONSTRAINT RTP28303  FOREIGN KEY (N_PAYEE_INS_INV_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE INJURY
ADD CONSTRAINT RTP28304  FOREIGN KEY (N_REPORTED_BY_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE QC_PARTICIPANT
ADD CONSTRAINT RTP28315  FOREIGN KEY (N_QC_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE SUB_INJ_CMP_RECPAY
ADD CONSTRAINT RTP28319  FOREIGN KEY (N_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE VEHICLE
ADD CONSTRAINT R_406  FOREIGN KEY (N_INVL_INS_COMP_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tD_INS_I AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM VEHICLE WHERE VEHICLE.N_INVL_INS_COMP_ID = old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because VEHICLE exists.');
        END
 ;

CREATE TRIGGER tD_INS_2 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM SUB_INJ_CMP_RECPAY WHERE SUB_INJ_CMP_RECPAY.N_INS_INVL_ID =
old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because SUB_INJ_CMP_RECPAY exists.');
        END
 ;

CREATE TRIGGER tD_INS_3 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM VEHICLE WHERE VEHICLE.N_INVL_PART_ID = old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because VEHICLE exists.');
        END
 ;

CREATE TRIGGER tD_INS_4 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM QC_PARTICIPANT WHERE QC_PARTICIPANT.N_QC_INS_INVL_ID =
old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because QC_PARTICIPANT exists.');
        END
 ;

CREATE TRIGGER tD_INS_5 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INJURY WHERE INJURY.N_REPORTED_BY_ID = old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because INJURY exists.');
        END
 ;

CREATE TRIGGER tD_INS_6 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INC_INVOICE WHERE INC_INVOICE.N_PAYEE_INS_INV_ID =
old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because INC_INVOICE exists.');
        END
 ;

CREATE TRIGGER tD_INS_7 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CCS_TASK WHERE CCS_TASK.N_TRG_INS_INVL_ID = old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because CCS_TASK exists.');
        END
 ;

CREATE TRIGGER tD_INS_8 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CCS_TASK WHERE CCS_TASK.N_TRG_INS_INVL_ID = old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because CCS_TASK exists.');
        END
 ;

CREATE TRIGGER tD_INS_9 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
    UPDATE TREATMENTS
      SET
        TREATMENTS.N_PROVIDER_ROLE_ID = NULL
      WHERE
        TREATMENTS.N_PROVIDER_ROLE_ID = old.N_INS_INVL_ID
 ;

CREATE TRIGGER tD_INS10 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RCOVRY_NEGOTIATION WHERE RCOVRY_NEGOTIATION.N_INS_INVL_ID =
old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because RCOVRY_NEGOTIATION exists.');
        END
 ;

CREATE TRIGGER tD_INS11 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CITATION WHERE CITATION.N_INS_INVL_ID = old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because CITATION exists.');
        END
 ;

CREATE TRIGGER tD_INS12 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM NEGOTIATION_ASSN WHERE NEGOTIATION_ASSN.N_INS_INVL_ID =
old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because NEGOTIATION_ASSN exists.');
        END
 ;

CREATE TRIGGER tD_INS13 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
    UPDATE DISABILITY
      SET
        DISABILITY.N_INS_INVL_ID = NULL
      WHERE
        DISABILITY.N_INS_INVL_ID = old.N_INS_INVL_ID
 ;

CREATE TRIGGER tD_INS14 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ASSIGNMENT WHERE ASSIGNMENT.N_CMT_INS_INVL_ID =
old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because ASSIGNMENT exists.');
        END
 ;

CREATE TRIGGER tD_INS15 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM OUT_INVOICE_PAYOR WHERE OUT_INVOICE_PAYOR.N_INS_INVL_ID =
old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because OUT_INVOICE_PAYOR exists.');
        END
 ;

CREATE TRIGGER tD_INS16 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PAYMENT WHERE PAYMENT.N_BHALF_INS_INV_ID = old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because PAYMENT exists.');
        END
 ;

CREATE TRIGGER tD_INS17 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECURRING_PAYMENT WHERE RECURRING_PAYMENT.N_BHALF_INS_INV_ID =
old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because RECURRING_PAYMENT exists.');
        END
 ;

CREATE TRIGGER tD_INS18 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INVOLVEMENT_ROLE WHERE INVOLVEMENT_ROLE.N_INS_INVL_ID =
old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because INVOLVEMENT_ROLE exists.');
        END
 ;

CREATE TRIGGER tD_INS19 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LOSS WHERE LOSS.N_INS_INVL_ID = old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because LOSS exists.');
        END
 ;

CREATE TRIGGER tD_INS20 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM SICKNESS_BENEFIT WHERE SICKNESS_BENEFIT.N_INS_INVL_ID =
old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because SICKNESS_BENEFIT exists.');
        END
 ;

CREATE TRIGGER tD_INS21 AFTER DELETE ON INS_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ASSIGNMENT WHERE ASSIGNMENT.N_SUP_INS_INVL_ID =
old.N_INS_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INS_INVOLVEMENT because ASSIGNMENT exists.');
        END
 ;

CREATE TRIGGER tU_INS_I AFTER UPDATE ON INS_INVOLVEMENT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INS_INVOLVEMENT WHERE new.N_INS_INVL_ID <> old.N_INS_INVL_ID))
     UPDATE TREATMENTS
       SET
         TREATMENTS.N_PROVIDER_ROLE_ID = NULL
       WHERE
         TREATMENTS.N_PROVIDER_ROLE_ID = old.N_INS_INVL_ID
 ;

CREATE TRIGGER tU_INS_2 AFTER UPDATE ON INS_INVOLVEMENT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM INS_INVOLVEMENT WHERE new.N_INS_INVL_ID <> old.N_INS_INVL_ID))
AND
     (0 < (SELECT count(*) FROM RCOVRY_NEGOTIATION WHERE RCOVRY_NEGOTIATION.N_INS_INVL_ID =
old.N_INS_INVL_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INS_INVOLVEMENT because RCOVRY_NEGOTIATION
exists.');
        END
 ;

CREATE TRIGGER tU_INS_3 AFTER UPDATE ON INS_INVOLVEMENT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM INS_INVOLVEMENT WHERE new.N_INS_INVL_ID <> old.N_INS_INVL_ID))
AND
     (0 < (SELECT count(*) FROM CITATION WHERE CITATION.N_INS_INVL_ID = old.N_INS_INVL_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INS_INVOLVEMENT because CITATION exists.');
        END
 ;

CREATE TRIGGER tU_INS_4 AFTER UPDATE ON INS_INVOLVEMENT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM INS_INVOLVEMENT WHERE new.N_INS_INVL_ID <> old.N_INS_INVL_ID))
AND
     (0 < (SELECT count(*) FROM NEGOTIATION_ASSN WHERE NEGOTIATION_ASSN.N_INS_INVL_ID =
old.N_INS_INVL_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INS_INVOLVEMENT because NEGOTIATION_ASSN exists.');
        END
 ;

CREATE TRIGGER tU_INS_5 AFTER UPDATE ON INS_INVOLVEMENT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INS_INVOLVEMENT WHERE new.N_INS_INVL_ID <> old.N_INS_INVL_ID))
     UPDATE DISABILITY
       SET
         DISABILITY.N_INS_INVL_ID = NULL
       WHERE
         DISABILITY.N_INS_INVL_ID = old.N_INS_INVL_ID
 ;


   

CREATE TABLE INSURANCE_ENTITY
(
        N_ENTITY_ID           CHAR(16) NOT NULL, 
        C_ENTITY_TYPE         CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP28401 ON INSURANCE_ENTITY
(
        N_ENTITY_ID           ASC
);



CREATE INDEX XTP28402 ON INSURANCE_ENTITY
(
        N_ENTITY_ID           ASC, 
        C_ENTITY_TYPE         ASC, 
        C_RCD_DEL             ASC
);



ALTER TABLE INSURANCE_ENTITY
ADD CONSTRAINT XTP28401  PRIMARY KEY (N_ENTITY_ID);



ALTER TABLE LOSS
ADD CONSTRAINT RTP28407  FOREIGN KEY (N_LOSS_ID)
                REFERENCES INSURANCE_ENTITY  (N_ENTITY_ID)
                ON DELETE RESTRICT;



ALTER TABLE POLICY
ADD CONSTRAINT RTP28408  FOREIGN KEY (N_POLICY_ID)
                REFERENCES INSURANCE_ENTITY  (N_ENTITY_ID)
                ON DELETE RESTRICT;



ALTER TABLE EVENT
ADD CONSTRAINT RTP28403  FOREIGN KEY (N_ENTITY_ID)
                REFERENCES INSURANCE_ENTITY  (N_ENTITY_ID)
                ON DELETE RESTRICT;



ALTER TABLE EVENT_HISTORY
ADD CONSTRAINT RTP28404  FOREIGN KEY (N_ENTITY_ID)
                REFERENCES INSURANCE_ENTITY  (N_ENTITY_ID)
                ON DELETE RESTRICT;



ALTER TABLE CLAIM
ADD CONSTRAINT RTP28402  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES INSURANCE_ENTITY  (N_ENTITY_ID)
                ON DELETE RESTRICT;



ALTER TABLE INVOLVEMENT_ROLE
ADD CONSTRAINT RTP28406  FOREIGN KEY (N_ENTITY_ID)
                REFERENCES INSURANCE_ENTITY  (N_ENTITY_ID)
                ON DELETE RESTRICT;



ALTER TABLE INS_INVOLVEMENT
ADD CONSTRAINT RTP28405  FOREIGN KEY (N_ENTITY_ID)
                REFERENCES INSURANCE_ENTITY  (N_ENTITY_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tD_INSUR AFTER DELETE ON INSURANCE_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INS_INVOLVEMENT WHERE INS_INVOLVEMENT.N_ENTITY_ID =
old.N_ENTITY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INSURANCE_ENTITY because INS_INVOLVEMENT exists.');
        END
 ;

CREATE TRIGGER tD_INSU2 AFTER DELETE ON INSURANCE_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INVOLVEMENT_ROLE WHERE INVOLVEMENT_ROLE.N_ENTITY_ID =
old.N_ENTITY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INSURANCE_ENTITY because INVOLVEMENT_ROLE exists.');
        END
 ;

CREATE TRIGGER tD_INSU3 AFTER DELETE ON INSURANCE_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CLAIM WHERE CLAIM.N_CLAIM_ID = old.N_ENTITY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INSURANCE_ENTITY because CLAIM exists.');
        END
 ;

CREATE TRIGGER tD_INSU4 AFTER DELETE ON INSURANCE_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM EVENT_HISTORY WHERE EVENT_HISTORY.N_ENTITY_ID =
old.N_ENTITY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INSURANCE_ENTITY because EVENT_HISTORY exists.');
        END
 ;

CREATE TRIGGER tD_INSU5 AFTER DELETE ON INSURANCE_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM EVENT WHERE EVENT.N_ENTITY_ID = old.N_ENTITY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INSURANCE_ENTITY because EVENT exists.');
        END
 ;

CREATE TRIGGER tD_INSU6 AFTER DELETE ON INSURANCE_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM POLICY WHERE POLICY.N_POLICY_ID = old.N_ENTITY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INSURANCE_ENTITY because POLICY exists.');
        END
 ;

CREATE TRIGGER tD_INSU7 AFTER DELETE ON INSURANCE_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LOSS WHERE LOSS.N_LOSS_ID = old.N_ENTITY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INSURANCE_ENTITY because LOSS exists.');
        END
 ;

CREATE TRIGGER tU_INSUR AFTER UPDATE ON INSURANCE_ENTITY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM INSURANCE_ENTITY WHERE new.N_ENTITY_ID <> old.N_ENTITY_ID)) AND

     (0 < (SELECT count(*) FROM EVENT_HISTORY WHERE EVENT_HISTORY.N_ENTITY_ID = old.N_ENTITY_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INSURANCE_ENTITY because EVENT_HISTORY exists.');
        END
 ;

CREATE TRIGGER tU_INSU2 AFTER UPDATE ON INSURANCE_ENTITY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM INSURANCE_ENTITY WHERE new.N_ENTITY_ID <> old.N_ENTITY_ID)) AND

     (0 < (SELECT count(*) FROM EVENT WHERE EVENT.N_ENTITY_ID = old.N_ENTITY_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INSURANCE_ENTITY because EVENT exists.');
        END
 ;


   

CREATE TABLE INTEREST_CALC
(
        N_INTEREST_CALC_ID    CHAR(16) NOT NULL, 
        A_PRINCIPAL_AMT       DECIMAL(19, 6) NOT NULL, 
        C_PRINCIPAL_UOM       CHAR(5) NOT NULL, 
        D_FROM_DT             TIMESTAMP NOT NULL, 
        D_TO_DT               TIMESTAMP NOT NULL, 
        N_DAYS                INTEGER NOT NULL, 
        C_LEGISLATION         CHAR(5) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_LAW                 CHAR(5) NOT NULL DEFAULT '', 
        C_RECALC_IND          CHAR(1) NOT NULL DEFAULT '', 
        N_PYMNT_DTL_ID        CHAR(16) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP41101 ON INTEREST_CALC
(
        N_INTEREST_CALC_ID    ASC
);



ALTER TABLE INTEREST_CALC
ADD CONSTRAINT XTP41101  PRIMARY KEY (N_INTEREST_CALC_ID);



ALTER TABLE INTEREST_CALC
ADD CONSTRAINT RTP31901  FOREIGN KEY (N_PYMNT_DTL_ID)
                REFERENCES PAYMENT_DTL  (N_PYMNT_DTL_ID)
                ON DELETE RESTRICT;



ALTER TABLE INTEREST_CALC_DTL
ADD CONSTRAINT RTP41101  FOREIGN KEY (N_INTEREST_CALC_ID)
                REFERENCES INTEREST_CALC  (N_INTEREST_CALC_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_INTER AFTER INSERT ON INTEREST_CALC
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE INTEREST_CALC
      SET
        INTEREST_CALC.N_PYMNT_DTL_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM PAYMENT_DTL
            WHERE
              new.N_PYMNT_DTL_ID = PAYMENT_DTL.N_PYMNT_DTL_ID
        )
 ;

CREATE TRIGGER tD_INTER AFTER DELETE ON INTEREST_CALC
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INTEREST_CALC_DTL WHERE INTEREST_CALC_DTL.N_INTEREST_CALC_ID =
old.N_INTEREST_CALC_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INTEREST_CALC because INTEREST_CALC_DTL exists.');
        END
 ;


   

CREATE TABLE INTEREST_CALC_DTL
(
        N_INTEREST_DTL_ID     CHAR(16) NOT NULL, 
        N_INTEREST_CALC_ID    CHAR(16) NOT NULL, 
        A_INTEREST_DTL_AMT    DECIMAL(19, 6), 
        C_INTEREST_DTL_UOM    CHAR(5) NOT NULL DEFAULT '', 
        N_DAYS                INTEGER NOT NULL, 
        D_PERIOD_TO_DT        TIMESTAMP NOT NULL, 
        A_BNK_INTEREST_PCT    DECIMAL(5, 2), 
        A_ADD_INTEREST_PCT    DECIMAL(5, 2), 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_LAW_EDITION         CHAR(5) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP41201 ON INTEREST_CALC_DTL
(
        N_INTEREST_DTL_ID     ASC
);



ALTER TABLE INTEREST_CALC_DTL
ADD CONSTRAINT XTP41201  PRIMARY KEY (N_INTEREST_DTL_ID);



ALTER TABLE INTEREST_CALC_DTL
ADD CONSTRAINT RTP41101  FOREIGN KEY (N_INTEREST_CALC_ID)
                REFERENCES INTEREST_CALC  (N_INTEREST_CALC_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_INTER AFTER INSERT ON INTEREST_CALC_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE INTEREST_CALC_DTL
      SET
        INTEREST_CALC_DTL.N_INTEREST_CALC_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INTEREST_CALC
            WHERE
              new.N_INTEREST_CALC_ID = INTEREST_CALC.N_INTEREST_CALC_ID
        )
 ;


   

CREATE TABLE INV_NBR_SEQUENCE
(
        N_CLAIM_NUMBER        CHAR(9) NOT NULL, 
        N_SEQUENCE            INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP63101 ON INV_NBR_SEQUENCE
(
        N_CLAIM_NUMBER        ASC
);



ALTER TABLE INV_NBR_SEQUENCE
ADD CONSTRAINT XTP63101  PRIMARY KEY (N_CLAIM_NUMBER);



   

CREATE TABLE INVL_ROLE_ASSN
(
        N_INV_ROLE_ASSN_ID    CHAR(16) NOT NULL, 
        N_INVL_ROLE_ID1       CHAR(16) NOT NULL, 
        N_INVL_ROLE_ID2       CHAR(16) NOT NULL, 
        T_COMMENTS            CHAR(30) NOT NULL, 
        N_ASSN_REFN           CHAR(35) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP28501 ON INVL_ROLE_ASSN
(
        N_INV_ROLE_ASSN_ID    ASC
);



CREATE INDEX XTP28504 ON INVL_ROLE_ASSN
(
        N_INVL_ROLE_ID1       ASC
);



CREATE INDEX XTP28505 ON INVL_ROLE_ASSN
(
        N_INVL_ROLE_ID2       ASC
);



CREATE INDEX XTP28502 ON INVL_ROLE_ASSN
(
        N_ASSN_REFN           ASC
);



ALTER TABLE INVL_ROLE_ASSN
ADD CONSTRAINT XTP28501  PRIMARY KEY (N_INV_ROLE_ASSN_ID);



CREATE TRIGGER tI_INVL_ AFTER INSERT ON INVL_ROLE_ASSN
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INVOLVEMENT_ROLE WHERE new.N_INVL_ROLE_ID2 =
INVOLVEMENT_ROLE.N_INVL_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert INVL_ROLE_ASSN because INVOLVEMENT_ROLE does not
exist.');
        END
 ;

CREATE TRIGGER tI_INVL2 AFTER INSERT ON INVL_ROLE_ASSN
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INVOLVEMENT_ROLE WHERE new.N_INVL_ROLE_ID1 =
INVOLVEMENT_ROLE.N_INVL_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert INVL_ROLE_ASSN because INVOLVEMENT_ROLE does not
exist.');
        END
 ;

CREATE TRIGGER tU_INVL_ AFTER UPDATE ON INVL_ROLE_ASSN
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM INVOLVEMENT_ROLE WHERE new.N_INVL_ROLE_ID2 =
INVOLVEMENT_ROLE.N_INVL_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INVL_ROLE_ASSN because INVOLVEMENT_ROLE does not
exist.');
        END
 ;

CREATE TRIGGER tU_INVL2 AFTER UPDATE ON INVL_ROLE_ASSN
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM INVOLVEMENT_ROLE WHERE new.N_INVL_ROLE_ID1 =
INVOLVEMENT_ROLE.N_INVL_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INVL_ROLE_ASSN because INVOLVEMENT_ROLE does not
exist.');
        END
 ;


   

CREATE TABLE INVOLVEMENT_ROLE
(
        N_INVL_ROLE_ID        CHAR(16) NOT NULL, 
        N_INS_INVL_ID         CHAR(16) NOT NULL, 
        N_ENTITY_ID           CHAR(16) NOT NULL, 
        C_INVL_ROLE           CHAR(5) NOT NULL, 
        C_STATUS              CHAR(5) NOT NULL, 
        D_ACTIVATION          TIMESTAMP NOT NULL, 
        D_DEACTIVATION        TIMESTAMP NOT NULL, 
        T_OTH_CARR_POL_N      CHAR(30) NOT NULL, 
        T_OTH_CARR_CLM_N      CHAR(30) NOT NULL, 
        M_ALT_PAYEE_NAME      CHAR(200) NOT NULL, 
        N_POLICY_DRIVER       CHAR(2) NOT NULL, 
        M_TITLE               CHAR(20) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP28901 ON INVOLVEMENT_ROLE
(
        N_INVL_ROLE_ID        ASC
)
         CLUSTER;



CREATE UNIQUE INDEX XTP28902 ON INVOLVEMENT_ROLE
(
        N_INS_INVL_ID         ASC, 
        C_INVL_ROLE           ASC, 
        C_RCD_DEL             ASC, 
        N_INVL_ROLE_ID        ASC
);



CREATE UNIQUE INDEX XTP28903 ON INVOLVEMENT_ROLE
(
        N_ENTITY_ID           ASC, 
        C_INVL_ROLE           ASC, 
        N_INS_INVL_ID         ASC, 
        C_RCD_DEL             ASC, 
        N_INVL_ROLE_ID        ASC
);



ALTER TABLE INVOLVEMENT_ROLE
ADD CONSTRAINT XTP28901  PRIMARY KEY (N_INVL_ROLE_ID);



ALTER TABLE INVOLVEMENT_ROLE
ADD CONSTRAINT RTP28307  FOREIGN KEY (N_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE INVOLVEMENT_ROLE
ADD CONSTRAINT RTP28406  FOREIGN KEY (N_ENTITY_ID)
                REFERENCES INSURANCE_ENTITY  (N_ENTITY_ID)
                ON DELETE RESTRICT;



ALTER TABLE LIABILITY
ADD CONSTRAINT RTP28908  FOREIGN KEY (N_INVL_ROLE_ID)
                REFERENCES INVOLVEMENT_ROLE  (N_INVL_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE EMPLOYMENT
ADD CONSTRAINT RTP28904  FOREIGN KEY (N_INVL_ROLE_ID)
                REFERENCES INVOLVEMENT_ROLE  (N_INVL_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE ATTRNY_LTGTN
ADD CONSTRAINT RTP28902  FOREIGN KEY (N_INVL_ROLE_ID)
                REFERENCES INVOLVEMENT_ROLE  (N_INVL_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE CLAIMANT_ROLE
ADD CONSTRAINT RTP28903  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES INVOLVEMENT_ROLE  (N_INVL_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE ITEM_INVOLVEMENT
ADD CONSTRAINT RTP28907  FOREIGN KEY (N_INVL_ROLE_ID)
                REFERENCES INVOLVEMENT_ROLE  (N_INVL_ROLE_ID)
                ON DELETE SET NULL;



ALTER TABLE REPAIR_ESTIMATE
ADD CONSTRAINT RTP28909  FOREIGN KEY (N_SRV_PROV_ROLE_ID)
                REFERENCES INVOLVEMENT_ROLE  (N_INVL_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE CCS_TASK
ADD CONSTRAINT RTP28901  FOREIGN KEY (N_TRGT_ID)
                REFERENCES INVOLVEMENT_ROLE  (N_INVL_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE LOSS_OF_PROVIDER
ADD CONSTRAINT RTP29810  FOREIGN KEY (N_INVL_ROLE_ID)
                REFERENCES INVOLVEMENT_ROLE  (N_INVL_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECOURSE_CORRESPON
ADD CONSTRAINT RTP28912  FOREIGN KEY (N_OPPOSITE_PART_ID)
                REFERENCES INVOLVEMENT_ROLE  (N_INVL_ROLE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tD_INVOL AFTER DELETE ON INVOLVEMENT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECOURSE_CORRESPON WHERE RECOURSE_CORRESPON.N_OPPOSITE_PART_ID =
old.N_INVL_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INVOLVEMENT_ROLE because RECOURSE_CORRESPON exists.');

        END
 ;

CREATE TRIGGER tD_INVO2 AFTER DELETE ON INVOLVEMENT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECOURSE_CORRESPON WHERE RECOURSE_CORRESPON.N_OPP_INS_COMP_ID =
old.N_INVL_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INVOLVEMENT_ROLE because RECOURSE_CORRESPON exists.');

        END
 ;

CREATE TRIGGER tD_INVO3 AFTER DELETE ON INVOLVEMENT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LOSS_OF_PROVIDER WHERE LOSS_OF_PROVIDER.N_INVL_ROLE_ID =
old.N_INVL_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INVOLVEMENT_ROLE because LOSS_OF_PROVIDER exists.');
        END
 ;

CREATE TRIGGER tD_INVO4 AFTER DELETE ON INVOLVEMENT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CCS_TASK WHERE CCS_TASK.N_TRGT_ID = old.N_INVL_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INVOLVEMENT_ROLE because CCS_TASK exists.');
        END
 ;

CREATE TRIGGER tD_INVO5 AFTER DELETE ON INVOLVEMENT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM REPAIR_ESTIMATE WHERE REPAIR_ESTIMATE.N_SRV_PROV_ROLE_ID =
old.N_INVL_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INVOLVEMENT_ROLE because REPAIR_ESTIMATE exists.');
        END
 ;

CREATE TRIGGER tD_INVO6 AFTER DELETE ON INVOLVEMENT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INVL_ROLE_ASSN WHERE INVL_ROLE_ASSN.N_INVL_ROLE_ID2 =
old.N_INVL_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INVOLVEMENT_ROLE because INVL_ROLE_ASSN exists.');
        END
 ;

CREATE TRIGGER tD_INVO7 AFTER DELETE ON INVOLVEMENT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INVL_ROLE_ASSN WHERE INVL_ROLE_ASSN.N_INVL_ROLE_ID1 =
old.N_INVL_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INVOLVEMENT_ROLE because INVL_ROLE_ASSN exists.');
        END
 ;

CREATE TRIGGER tD_INVO8 AFTER DELETE ON INVOLVEMENT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
    UPDATE ITEM_INVOLVEMENT
      SET
        ITEM_INVOLVEMENT.N_INVL_ROLE_ID = NULL
      WHERE
        ITEM_INVOLVEMENT.N_INVL_ROLE_ID = old.N_INVL_ROLE_ID
 ;

CREATE TRIGGER tD_INVO9 AFTER DELETE ON INVOLVEMENT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CLAIMANT_ROLE WHERE CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID =
old.N_INVL_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INVOLVEMENT_ROLE because CLAIMANT_ROLE exists.');
        END
 ;

CREATE TRIGGER tD_INV10 AFTER DELETE ON INVOLVEMENT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ATTRNY_LTGTN WHERE ATTRNY_LTGTN.N_INVL_ROLE_ID =
old.N_INVL_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INVOLVEMENT_ROLE because ATTRNY_LTGTN exists.');
        END
 ;

CREATE TRIGGER tD_INV11 AFTER DELETE ON INVOLVEMENT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM EMPLOYMENT WHERE EMPLOYMENT.N_INVL_ROLE_ID =
old.N_INVL_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INVOLVEMENT_ROLE because EMPLOYMENT exists.');
        END
 ;

CREATE TRIGGER tD_INV12 AFTER DELETE ON INVOLVEMENT_ROLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LIABILITY WHERE LIABILITY.N_INVL_ROLE_ID = old.N_INVL_ROLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete INVOLVEMENT_ROLE because LIABILITY exists.');
        END
 ;

CREATE TRIGGER tU_INVOL AFTER UPDATE ON INVOLVEMENT_ROLE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM INVOLVEMENT_ROLE WHERE new.N_INVL_ROLE_ID <>
old.N_INVL_ROLE_ID)) AND
     (0 < (SELECT count(*) FROM REPAIR_ESTIMATE WHERE REPAIR_ESTIMATE.N_SRV_PROV_ROLE_ID =
old.N_INVL_ROLE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INVOLVEMENT_ROLE because REPAIR_ESTIMATE exists.');
        END
 ;

CREATE TRIGGER tU_INVO2 AFTER UPDATE ON INVOLVEMENT_ROLE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM INVOLVEMENT_ROLE WHERE new.N_INVL_ROLE_ID <>
old.N_INVL_ROLE_ID)) AND
     (0 < (SELECT count(*) FROM INVL_ROLE_ASSN WHERE INVL_ROLE_ASSN.N_INVL_ROLE_ID2 =
old.N_INVL_ROLE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INVOLVEMENT_ROLE because INVL_ROLE_ASSN exists.');
        END
 ;

CREATE TRIGGER tU_INVO3 AFTER UPDATE ON INVOLVEMENT_ROLE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM INVOLVEMENT_ROLE WHERE new.N_INVL_ROLE_ID <>
old.N_INVL_ROLE_ID)) AND
     (0 < (SELECT count(*) FROM INVL_ROLE_ASSN WHERE INVL_ROLE_ASSN.N_INVL_ROLE_ID1 =
old.N_INVL_ROLE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INVOLVEMENT_ROLE because INVL_ROLE_ASSN exists.');
        END
 ;

CREATE TRIGGER tU_INVO4 AFTER UPDATE ON INVOLVEMENT_ROLE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INVOLVEMENT_ROLE WHERE new.N_INVL_ROLE_ID <>
old.N_INVL_ROLE_ID))
     UPDATE ITEM_INVOLVEMENT
       SET
         ITEM_INVOLVEMENT.N_INVL_ROLE_ID = NULL
       WHERE
         ITEM_INVOLVEMENT.N_INVL_ROLE_ID = old.N_INVL_ROLE_ID
 ;

CREATE TRIGGER tU_INVO5 AFTER UPDATE ON INVOLVEMENT_ROLE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM INVOLVEMENT_ROLE WHERE new.N_INVL_ROLE_ID <>
old.N_INVL_ROLE_ID)) AND
     (0 < (SELECT count(*) FROM ATTRNY_LTGTN WHERE ATTRNY_LTGTN.N_INVL_ROLE_ID =
old.N_INVL_ROLE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INVOLVEMENT_ROLE because ATTRNY_LTGTN exists.');
        END
 ;

CREATE TRIGGER tU_INVO6 AFTER UPDATE ON INVOLVEMENT_ROLE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM INVOLVEMENT_ROLE WHERE new.N_INVL_ROLE_ID <>
old.N_INVL_ROLE_ID)) AND
     (0 < (SELECT count(*) FROM EMPLOYMENT WHERE EMPLOYMENT.N_INVL_ROLE_ID = old.N_INVL_ROLE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update INVOLVEMENT_ROLE because EMPLOYMENT exists.');
        END
 ;


   

CREATE TABLE ITEM
(
        N_ITEM_ID             CHAR(16) NOT NULL, 
        C_ITEM_TYPE           CHAR(5) NOT NULL, 
        C_ITM_INV_STAT        CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_ITEM_OBJECT_ID      CHAR(29) NOT NULL, 
        A_VAT_PCT             DECIMAL(5, 2)
);



CREATE UNIQUE INDEX XTP29101 ON ITEM
(
        N_ITEM_ID             ASC
)
         CLUSTER;



CREATE UNIQUE INDEX XTP29102 ON ITEM
(
        N_ITEM_ID             ASC, 
        C_ITEM_TYPE           ASC, 
        C_RCD_DEL             ASC
);



ALTER TABLE ITEM
ADD CONSTRAINT XTP29101  PRIMARY KEY (N_ITEM_ID);



ALTER TABLE ASSMT_ITEM_XREF
ADD CONSTRAINT RTP29111  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE ITEM_PAYMNT_XREF
ADD CONSTRAINT RTP29114  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE ITEM_ANIMAL
ADD CONSTRAINT RTP29112  FOREIGN KEY (N_ITEM_ANIMAL_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE POL_COV
ADD CONSTRAINT RTP29107  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE POLICY_TEXT
ADD CONSTRAINT RTP29116  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE ITEM_QUOTE
ADD CONSTRAINT RTP29115  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE ITEM_LODARE
ADD CONSTRAINT RTP29113  FOREIGN KEY (N_ITEM_LODARE_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE ITEM_RELSHP
ADD CONSTRAINT RTP29103  FOREIGN KEY (N_ITEM_ID1)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE ITEM_RELSHP
ADD CONSTRAINT RTP29104  FOREIGN KEY (N_ITEM_ID2)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE ITEM_SITE
ADD CONSTRAINT RTP29105  FOREIGN KEY (N_ITEM_SITE_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE YACHT
ADD CONSTRAINT RTP29110  FOREIGN KEY (N_YACHT_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE VEHICLE
ADD CONSTRAINT RTP29109  FOREIGN KEY (N_VEHICLE_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE JOB_CLASS
ADD CONSTRAINT RTP29106  FOREIGN KEY (N_JOB_CLS_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE ITEM_ARTICLE
ADD CONSTRAINT RTP29101  FOREIGN KEY (N_ITEM_ARTICLE_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE ITEM_INVOLVEMENT
ADD CONSTRAINT RTP29102  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE REPAIR_ESTIMATE
ADD CONSTRAINT RTP29108  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE MOTOR
ADD CONSTRAINT RTP29117  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE OUT_INVOICE_DTL
ADD CONSTRAINT RTP29118  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE ITEM_AGRI_COMM
ADD CONSTRAINT RTP29109  FOREIGN KEY (N_ITEM_AGRI_COM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE ITEM_TRAVEL
ADD CONSTRAINT RTP29119  FOREIGN KEY (N_ITEM_TRAVEL_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE ITEM_ACCIDENT
ADD CONSTRAINT RTP29120  FOREIGN KEY (N_ITEM_ACCIDENT_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE SUB_ITEM_INS_SUM
ADD CONSTRAINT RTP29121  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE ITEM_INSURED_PARTY
ADD CONSTRAINT RTP29110  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tD_ITEM AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ITEM_INSURED_PARTY WHERE ITEM_INSURED_PARTY.N_ITEM_ID =
old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because ITEM_INSURED_PARTY exists.');
        END
 ;

CREATE TRIGGER tD_ITEM2 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM SUB_ITEM_INS_SUM WHERE SUB_ITEM_INS_SUM.N_ITEM_ID =
old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because SUB_ITEM_INS_SUM exists.');
        END
 ;

CREATE TRIGGER tD_ITEM3 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ITEM_ACCIDENT WHERE ITEM_ACCIDENT.N_ITEM_ACCIDENT_ID =
old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because ITEM_ACCIDENT exists.');
        END
 ;

CREATE TRIGGER tD_ITEM4 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ITEM_TRAVEL WHERE ITEM_TRAVEL.N_ITEM_TRAVEL_ID = old.N_ITEM_ID))

        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because ITEM_TRAVEL exists.');
        END
 ;

CREATE TRIGGER tD_ITEM5 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ITEM_AGRI_COMM WHERE ITEM_AGRI_COMM.N_ITEM_AGRI_COM_ID =
old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because ITEM_AGRI_COMM exists.');
        END
 ;

CREATE TRIGGER tD_ITEM6 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM OUT_INVOICE_DTL WHERE OUT_INVOICE_DTL.N_ITEM_ID =
old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because OUT_INVOICE_DTL exists.');
        END
 ;

CREATE TRIGGER tD_ITEM7 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM MOTOR WHERE MOTOR.N_ITEM_ID = old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because MOTOR exists.');
        END
 ;

CREATE TRIGGER tD_ITEM8 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM REPAIR_ESTIMATE WHERE REPAIR_ESTIMATE.N_ITEM_ID =
old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because REPAIR_ESTIMATE exists.');
        END
 ;

CREATE TRIGGER tD_ITEM9 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ITEM_INVOLVEMENT WHERE ITEM_INVOLVEMENT.N_ITEM_ID =
old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because ITEM_INVOLVEMENT exists.');
        END
 ;

CREATE TRIGGER tD_ITE10 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ITEM_ARTICLE WHERE ITEM_ARTICLE.N_ITEM_ARTICLE_ID =
old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because ITEM_ARTICLE exists.');
        END
 ;

CREATE TRIGGER tD_ITE11 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM JOB_CLASS WHERE JOB_CLASS.N_JOB_CLS_ID = old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because JOB_CLASS exists.');
        END
 ;

CREATE TRIGGER tD_ITE12 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM VEHICLE WHERE VEHICLE.N_VEHICLE_ID = old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because VEHICLE exists.');
        END
 ;

CREATE TRIGGER tD_ITE13 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM YACHT WHERE YACHT.N_YACHT_ID = old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because YACHT exists.');
        END
 ;

CREATE TRIGGER tD_ITE14 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ITEM_SITE WHERE ITEM_SITE.N_ITEM_SITE_ID = old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because ITEM_SITE exists.');
        END
 ;

CREATE TRIGGER tD_ITE15 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ITEM_RELSHP WHERE ITEM_RELSHP.N_ITEM_ID2 = old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because ITEM_RELSHP exists.');
        END
 ;

CREATE TRIGGER tD_ITE16 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ITEM_RELSHP WHERE ITEM_RELSHP.N_ITEM_ID1 = old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because ITEM_RELSHP exists.');
        END
 ;

CREATE TRIGGER tD_ITE17 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ITEM_LODARE WHERE ITEM_LODARE.N_ITEM_LODARE_ID = old.N_ITEM_ID))

        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because ITEM_LODARE exists.');
        END
 ;

CREATE TRIGGER tD_ITE18 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ITEM_QUOTE WHERE ITEM_QUOTE.N_ITEM_ID = old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because ITEM_QUOTE exists.');
        END
 ;

CREATE TRIGGER tD_ITE19 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM POLICY_TEXT WHERE POLICY_TEXT.N_ITEM_ID = old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because POLICY_TEXT exists.');
        END
 ;

CREATE TRIGGER tD_ITE20 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM POL_COV WHERE POL_COV.N_ITEM_ID = old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because POL_COV exists.');
        END
 ;

CREATE TRIGGER tD_ITE21 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ITEM_ANIMAL WHERE ITEM_ANIMAL.N_ITEM_ANIMAL_ID = old.N_ITEM_ID))

        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because ITEM_ANIMAL exists.');
        END
 ;

CREATE TRIGGER tD_ITE22 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ITEM_PAYMNT_XREF WHERE ITEM_PAYMNT_XREF.N_ITEM_ID =
old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because ITEM_PAYMNT_XREF exists.');
        END
 ;

CREATE TRIGGER tD_ITE23 AFTER DELETE ON ITEM
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ASSMT_ITEM_XREF WHERE ASSMT_ITEM_XREF.N_ITEM_ID =
old.N_ITEM_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM because ASSMT_ITEM_XREF exists.');
        END
 ;

CREATE TRIGGER tU_ITEM AFTER UPDATE ON ITEM
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID <> old.N_ITEM_ID)) AND
     (0 < (SELECT count(*) FROM REPAIR_ESTIMATE WHERE REPAIR_ESTIMATE.N_ITEM_ID = old.N_ITEM_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ITEM because REPAIR_ESTIMATE exists.');
        END
 ;

CREATE TRIGGER tU_ITEM2 AFTER UPDATE ON ITEM
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID <> old.N_ITEM_ID)) AND
     (0 < (SELECT count(*) FROM ITEM_INVOLVEMENT WHERE ITEM_INVOLVEMENT.N_ITEM_ID =
old.N_ITEM_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ITEM because ITEM_INVOLVEMENT exists.');
        END
 ;

CREATE TRIGGER tU_ITEM3 AFTER UPDATE ON ITEM
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID <> old.N_ITEM_ID)) AND
     (0 < (SELECT count(*) FROM ITEM_ARTICLE WHERE ITEM_ARTICLE.N_ITEM_ARTICLE_ID =
old.N_ITEM_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ITEM because ITEM_ARTICLE exists.');
        END
 ;

CREATE TRIGGER tU_ITEM4 AFTER UPDATE ON ITEM
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID <> old.N_ITEM_ID)) AND
     (0 < (SELECT count(*) FROM JOB_CLASS WHERE JOB_CLASS.N_JOB_CLS_ID = old.N_ITEM_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ITEM because JOB_CLASS exists.');
        END
 ;

CREATE TRIGGER tU_ITEM5 AFTER UPDATE ON ITEM
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID <> old.N_ITEM_ID)) AND
     (0 < (SELECT count(*) FROM VEHICLE WHERE VEHICLE.N_VEHICLE_ID = old.N_ITEM_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ITEM because VEHICLE exists.');
        END
 ;

CREATE TRIGGER tU_ITEM6 AFTER UPDATE ON ITEM
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID <> old.N_ITEM_ID)) AND
     (0 < (SELECT count(*) FROM YACHT WHERE YACHT.N_YACHT_ID = old.N_ITEM_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ITEM because YACHT exists.');
        END
 ;

CREATE TRIGGER tU_ITEM7 AFTER UPDATE ON ITEM
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID <> old.N_ITEM_ID)) AND
     (0 < (SELECT count(*) FROM ITEM_SITE WHERE ITEM_SITE.N_ITEM_SITE_ID = old.N_ITEM_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ITEM because ITEM_SITE exists.');
        END
 ;

CREATE TRIGGER tU_ITEM8 AFTER UPDATE ON ITEM
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID <> old.N_ITEM_ID)) AND
     (0 < (SELECT count(*) FROM ITEM_RELSHP WHERE ITEM_RELSHP.N_ITEM_ID2 = old.N_ITEM_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ITEM because ITEM_RELSHP exists.');
        END
 ;

CREATE TRIGGER tU_ITEM9 AFTER UPDATE ON ITEM
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID <> old.N_ITEM_ID)) AND
     (0 < (SELECT count(*) FROM ITEM_RELSHP WHERE ITEM_RELSHP.N_ITEM_ID1 = old.N_ITEM_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ITEM because ITEM_RELSHP exists.');
        END
 ;


   

CREATE TABLE ITEM_ACCIDENT
(
        N_ITEM_ACCIDENT_ID    CHAR(16) NOT NULL, 
        C_POL_RISK_CLASS      CHAR(5) NOT NULL DEFAULT '', 
        C_DANGER_SPORT_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_EXTRA_COV_IND       CHAR(1) NOT NULL DEFAULT 'N', 
        A_FUNERAL_HELP_AMT    DECIMAL(19, 6), 
        C_FUNERAL_HELP_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_DISPOSABLE_AMT      DECIMAL(19, 6), 
        C_DISPOSABLE_UOM      CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_HOLIDAY_COV_AMT     DECIMAL(19, 6), 
        C_HOLIDAY_COV_UOM     CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_ALLOWANCE_SUM       DECIMAL(19, 6), 
        C_ALLOWANCE_UOM       CHAR(5) NOT NULL DEFAULT 'DKK', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_SPARETIME_IND       CHAR(2) NOT NULL DEFAULT '', 
        C_COVERAGE_TYPE       CHAR(1) NOT NULL DEFAULT '', 
        C_PROFESSION_KT       CHAR(10) NOT NULL DEFAULT '', 
        C_ALLWNCE_TYP_CODE    CHAR(5) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP65301 ON ITEM_ACCIDENT
(
        N_ITEM_ACCIDENT_ID    ASC
);



ALTER TABLE ITEM_ACCIDENT
ADD CONSTRAINT XTP65301  PRIMARY KEY (N_ITEM_ACCIDENT_ID);



ALTER TABLE ITEM_ACCIDENT
ADD CONSTRAINT RTP29120  FOREIGN KEY (N_ITEM_ACCIDENT_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_ITEM_ AFTER INSERT ON ITEM_ACCIDENT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ITEM WHERE new.N_ITEM_ACCIDENT_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert ITEM_ACCIDENT because ITEM does not exist.');
        END
 ;


   

CREATE TABLE ITEM_AGRI_COMM
(
        N_ITEM_AGRI_COM_ID    CHAR(16) NOT NULL, 
        C_CUSTOMER_NUMBER     CHAR(7) NOT NULL DEFAULT '', 
        M_STREET_NAME         CHAR(32) NOT NULL DEFAULT '', 
        M_STREET_NO           CHAR(9) NOT NULL DEFAULT '', 
        M_CITY_NAME           CHAR(32) NOT NULL DEFAULT '', 
        M_SUB_CITY_NAME       CHAR(32) NOT NULL DEFAULT '', 
        C_POSTAL_CODE         CHAR(9) NOT NULL DEFAULT '', 
        C_COUNTRY_CODE        CHAR(5) NOT NULL DEFAULT '', 
        M_FLOOR               CHAR(12) NOT NULL DEFAULT '', 
        C_SCOPE_KT            CHAR(2) NOT NULL DEFAULT '', 
        C_PROFESSION_KT       CHAR(7) NOT NULL DEFAULT '', 
        T_ITEM_DESCRIPTION    VARCHAR(256) NOT NULL DEFAULT '', 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        T_SCOPE               VARCHAR(80) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP32801 ON ITEM_AGRI_COMM
(
        N_ITEM_AGRI_COM_ID    ASC
)
         CLUSTER;



ALTER TABLE ITEM_AGRI_COMM
ADD CONSTRAINT XTP32801  PRIMARY KEY (N_ITEM_AGRI_COM_ID);



ALTER TABLE ITEM_AGRI_COMM
ADD CONSTRAINT RTP29109  FOREIGN KEY (N_ITEM_AGRI_COM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_ITEM_ AFTER INSERT ON ITEM_AGRI_COMM
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ITEM WHERE new.N_ITEM_AGRI_COM_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert ITEM_AGRI_COMM because ITEM does not exist.');
        END
 ;


   

CREATE TABLE ITEM_ANIMAL
(
        N_ITEM_ANIMAL_ID      CHAR(16) NOT NULL, 
        M_NAME                CHAR(50) NOT NULL, 
        D_DATE_OF_BIRTH       TIMESTAMP NOT NULL, 
        M_RACE                CHAR(5) NOT NULL DEFAULT '', 
        C_GENDER              CHAR(5) NOT NULL DEFAULT '', 
        M_PEDIGREE            CHAR(50) DEFAULT '', 
        C_ANIMAL_ID           CHAR(50) NOT NULL, 
        N_DOG_CLUB_GTI_NO     CHAR(7) NOT NULL DEFAULT '', 
        Q_DOGS                INTEGER, 
        A_SUM_LIFE_AMT        DECIMAL(19, 6), 
        C_SUM_LIFE_UOM        CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_ANIMAL_CLUB_GTI     CHAR(7) NOT NULL DEFAULT '', 
        Q_NO_OF_ANIMALS       INTEGER NOT NULL DEFAULT 0, 
        T_RACE                VARCHAR(50) NOT NULL DEFAULT '', 
        T_GENDER              CHAR(16) NOT NULL DEFAULT '', 
        T_USE                 VARCHAR(32) NOT NULL DEFAULT '', 
        A_OWN_PAYMENT_PCT     DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        A_SICKNESS_SUM        DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_SICKNESS_SUM_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        T_ANIMAL_CLUB         VARCHAR(35) DEFAULT '', 
        A_MARKET_VALUE_AMT    DECIMAL(19, 6) DEFAULT 0, 
        C_MARKET_VALUE_UOM    CHAR(5) DEFAULT 'DKK', 
        N_COMPETITION_DK      INTEGER DEFAULT 0, 
        C_INTER_COMPE_IND     CHAR(1) DEFAULT '', 
        N_STABLE_POST_CODE    CHAR(4) DEFAULT '', 
        T_WAY_STABLE          VARCHAR(50) DEFAULT '', 
        A_MATING_EXP_AMT      DECIMAL(19, 6) DEFAULT 0, 
        C_MATING_EXP_UOM      CHAR(5) DEFAULT 'DKK', 
        T_WAY_MATING          CHAR(16) DEFAULT '', 
        C_FOAL_ALARM_IND      CHAR(1) DEFAULT '', 
        A_BREED_SUM_AMT       DECIMAL(19, 6) DEFAULT 0, 
        C_BREED_SUM_UOM       CHAR(5) DEFAULT 'DKK', 
        A_LOSS_USE_SUM_AMT    DECIMAL(19, 6) DEFAULT 0, 
        C_LOSS_USE_SUM_UOM    CHAR(5) DEFAULT 'DKK'
);



CREATE UNIQUE INDEX XTP41301 ON ITEM_ANIMAL
(
        N_ITEM_ANIMAL_ID      ASC
);



ALTER TABLE ITEM_ANIMAL
ADD CONSTRAINT XTP41301  PRIMARY KEY (N_ITEM_ANIMAL_ID);



ALTER TABLE ITEM_ANIMAL
ADD CONSTRAINT RTP29112  FOREIGN KEY (N_ITEM_ANIMAL_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_ITEM_ AFTER INSERT ON ITEM_ANIMAL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ITEM WHERE new.N_ITEM_ANIMAL_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert ITEM_ANIMAL because ITEM does not exist.');
        END
 ;


   

CREATE TABLE ITEM_ARTICLE
(
        N_ITEM_ARTICLE_ID     CHAR(16) NOT NULL, 
        T_ARTICLE_DESC        VARCHAR(254) NOT NULL, 
        N_ITM_CTGY_NBR        INTEGER, 
        A_INSURED_AMT         DECIMAL(19, 6), 
        A_DED_AMT             DECIMAL(19, 6), 
        C_CURRENCY_UOM        CHAR(5) NOT NULL, 
        T_ARTICLE_NAME        CHAR(50) NOT NULL, 
        A_STATED_AMT          DECIMAL(19, 6), 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP29201 ON ITEM_ARTICLE
(
        N_ITEM_ARTICLE_ID     ASC
);



ALTER TABLE ITEM_ARTICLE
ADD CONSTRAINT XTP29201  PRIMARY KEY (N_ITEM_ARTICLE_ID);



ALTER TABLE ITEM_ARTICLE
ADD CONSTRAINT RTP29101  FOREIGN KEY (N_ITEM_ARTICLE_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_ITEM_ AFTER INSERT ON ITEM_ARTICLE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ITEM WHERE new.N_ITEM_ARTICLE_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert ITEM_ARTICLE because ITEM does not exist.');
        END
 ;

CREATE TRIGGER tU_ITEM_ AFTER UPDATE ON ITEM_ARTICLE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM ITEM WHERE new.N_ITEM_ARTICLE_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ITEM_ARTICLE because ITEM does not exist.');
        END
 ;


   

CREATE TABLE ITEM_INSURED_PARTY
(
        N_ITEM_INS_PART_ID    CHAR(16) NOT NULL, 
        N_ITEM_ID             CHAR(16) NOT NULL, 
        N_CUSTOMER_NUMBER     CHAR(7) NOT NULL DEFAULT '', 
        C_CLIENT_TYPE         CHAR(5) NOT NULL DEFAULT '', 
        M_DISPLAY_NAME        VARCHAR(80) NOT NULL DEFAULT '', 
        N_CPR_NUMBER          CHAR(10) NOT NULL DEFAULT '', 
        D_BIRTH_DATE_DT       TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP65501 ON ITEM_INSURED_PARTY
(
        N_ITEM_INS_PART_ID    ASC
)
         CLUSTER;



ALTER TABLE ITEM_INSURED_PARTY
ADD CONSTRAINT XTP65501  PRIMARY KEY (N_ITEM_INS_PART_ID);



ALTER TABLE ITEM_INSURED_PARTY
ADD CONSTRAINT RTP29110  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_ITEM_ AFTER INSERT ON ITEM_INSURED_PARTY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE ITEM_INSURED_PARTY
      SET
        ITEM_INSURED_PARTY.N_ITEM_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ITEM
            WHERE
              new.N_ITEM_ID = ITEM.N_ITEM_ID
        )
 ;


   

CREATE TABLE ITEM_INVOLVEMENT
(
        N_ITEM_INVL_ID        CHAR(16) NOT NULL, 
        N_ITEM_ID             CHAR(16) NOT NULL, 
        N_ENTITY_ID           CHAR(16) NOT NULL, 
        N_INVL_ROLE_ID        CHAR(16) NOT NULL, 
        C_ITEM_INVL_TYP       CHAR(5) NOT NULL, 
        C_COVERED_IND         CHAR(1) NOT NULL, 
        C_CNTRB_FACTOR        CHAR(5) NOT NULL, 
        D_ESTM_REPAIR         TIMESTAMP NOT NULL, 
        D_ACTL_REPAIR         TIMESTAMP NOT NULL, 
        T_DAMAGE_DESC         VARCHAR(254) NOT NULL, 
        C_REPAIR_STAT         CHAR(5) NOT NULL, 
        C_TOT_DMG_AMT_RNG     CHAR(5) NOT NULL, 
        A_ESTM_VALUE          DECIMAL(19, 6), 
        C_ITM_USABLE_IND      CHAR(5) NOT NULL, 
        N_INVLD_PERSONS       INTEGER, 
        C_ITEM_ENTITY_TYP     CHAR(5) NOT NULL, 
        M_STREET_NAME         CHAR(32) NOT NULL, 
        M_CITY_NAME           CHAR(32) NOT NULL, 
        C_LOC_STATE           CHAR(5) NOT NULL, 
        C_POSTAL_CODE         CHAR(9) NOT NULL, 
        C_LOC_COUNTRY         CHAR(5) NOT NULL, 
        C_LOC_COUNTY          CHAR(5) NOT NULL, 
        T_LOC_DETAIL          CHAR(254) NOT NULL, 
        N_MILEAGE             INTEGER, 
        C_MILEAGE_UOM         CHAR(5) NOT NULL, 
        C_PURPOSE_OF_USE      CHAR(5) NOT NULL, 
        C_USE_W_PERMISSION    CHAR(5) NOT NULL, 
        A_ACT_REPAIR_VAL      DECIMAL(19, 6), 
        C_ACT_REPAIR_UOM      CHAR(5) NOT NULL, 
        N_EST_RECV_FROM_ID    CHAR(16) NOT NULL, 
        C_EST_REPAIR_UOM      CHAR(5) NOT NULL, 
        C_EST_DAMAGE_IND      CHAR(5) NOT NULL, 
        C_RENTAL_ITEM_REQ     CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        M_STREET_NO           CHAR(9) NOT NULL, 
        M_FLOOR               CHAR(12) NOT NULL, 
        M_SUB_CITY_NAME       CHAR(32) NOT NULL
);



CREATE UNIQUE INDEX XTP29301 ON ITEM_INVOLVEMENT
(
        N_ITEM_INVL_ID        ASC
)
         CLUSTER;



CREATE UNIQUE INDEX XTP29303 ON ITEM_INVOLVEMENT
(
        N_ITEM_ID             ASC, 
        C_ITEM_INVL_TYP       ASC, 
        C_RCD_DEL             ASC, 
        N_ITEM_INVL_ID        ASC
);



CREATE UNIQUE INDEX XTP29304 ON ITEM_INVOLVEMENT
(
        N_ENTITY_ID           ASC, 
        N_ITEM_ID             ASC, 
        C_ITEM_INVL_TYP       ASC, 
        C_RCD_DEL             ASC, 
        N_ITEM_INVL_ID        ASC
);



ALTER TABLE ITEM_INVOLVEMENT
ADD CONSTRAINT XTP29301  PRIMARY KEY (N_ITEM_INVL_ID);



ALTER TABLE ITEM_INVOLVEMENT
ADD CONSTRAINT RTP28907  FOREIGN KEY (N_INVL_ROLE_ID)
                REFERENCES INVOLVEMENT_ROLE  (N_INVL_ROLE_ID)
                ON DELETE SET NULL;



ALTER TABLE ITEM_INVOLVEMENT
ADD CONSTRAINT RTP29102  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE VEHICLE_DAMAGE
ADD CONSTRAINT RTP29302  FOREIGN KEY (N_ITEM_INVL_ID)
                REFERENCES ITEM_INVOLVEMENT  (N_ITEM_INVL_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_ITEM_ AFTER INSERT ON ITEM_INVOLVEMENT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert ITEM_INVOLVEMENT because ITEM does not exist.');
        END
 ;

CREATE TRIGGER tI_ITEM2 AFTER INSERT ON ITEM_INVOLVEMENT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE ITEM_INVOLVEMENT
      SET
        ITEM_INVOLVEMENT.N_INVL_ROLE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INVOLVEMENT_ROLE
            WHERE
              new.N_INVL_ROLE_ID = INVOLVEMENT_ROLE.N_INVL_ROLE_ID
        )
 ;

CREATE TRIGGER tD_ITEM_ AFTER DELETE ON ITEM_INVOLVEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM VEHICLE_DAMAGE WHERE VEHICLE_DAMAGE.N_ITEM_INVL_ID =
old.N_ITEM_INVL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM_INVOLVEMENT because VEHICLE_DAMAGE exists.');
        END
 ;

CREATE TRIGGER tU_ITEM_ AFTER UPDATE ON ITEM_INVOLVEMENT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM ITEM_INVOLVEMENT WHERE new.N_ITEM_INVL_ID <>
old.N_ITEM_INVL_ID)) AND
     (0 < (SELECT count(*) FROM VEHICLE_DAMAGE WHERE VEHICLE_DAMAGE.N_ITEM_INVL_ID =
old.N_ITEM_INVL_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ITEM_INVOLVEMENT because VEHICLE_DAMAGE exists.');
        END
 ;

CREATE TRIGGER tU_ITEM2 AFTER UPDATE ON ITEM_INVOLVEMENT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ITEM_INVOLVEMENT because ITEM does not exist.');
        END
 ;

CREATE TRIGGER tU_ITEM3 AFTER UPDATE ON ITEM_INVOLVEMENT
     FOR EACH ROW MODE DB2SQL
    UPDATE ITEM_INVOLVEMENT
      SET
        ITEM_INVOLVEMENT.N_INVL_ROLE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INVOLVEMENT_ROLE
            WHERE
              new.N_INVL_ROLE_ID = INVOLVEMENT_ROLE.N_INVL_ROLE_ID
        )
 ;


   

CREATE TABLE ITEM_LODARE
(
        N_ITEM_LODARE_ID      CHAR(16) NOT NULL, 
        C_LODARE_TYPE         CHAR(5) NOT NULL, 
        C_PRODUCT_CAT         CHAR(8) NOT NULL, 
        C_PRODUCT             CHAR(8) NOT NULL, 
        M_BRAND               CHAR(50) NOT NULL, 
        M_MODEL               CHAR(50) NOT NULL, 
        C_VAT_IND             CHAR(1) NOT NULL, 
        A_DEPR_PCT            INTEGER, 
        Q_QUANTITY            INTEGER, 
        D_PURCH_DATE          TIMESTAMP NOT NULL, 
        C_PURCH_DATE          CHAR(10) NOT NULL, 
        N_AGE                 INTEGER, 
        N_BIKE_FRAME_NBR      CHAR(30) NOT NULL, 
        N_BIKE_LOCK_NBR       CHAR(30) NOT NULL, 
        C_KOSTER_IND          CHAR(1) NOT NULL, 
        C_DOC_STATUS          CHAR(5) NOT NULL, 
        C_DOC_TYPE            CHAR(5) NOT NULL, 
        C_USED_IND            CHAR(1) NOT NULL, 
        C_OWNER               CHAR(5) NOT NULL, 
        T_COMMENT             CHAR(254) NOT NULL, 
        C_STATUS              CHAR(5) NOT NULL, 
        N_SETTLMNT_VIA_NBR    CHAR(16) NOT NULL, 
        C_LOCATION            CHAR(5) NOT NULL, 
        N_HEIGHT              DECIMAL(19, 6), 
        N_WIDTH               DECIMAL(19, 6), 
        N_LENGTH              DECIMAL(19, 6), 
        C_SIZE_UOM            CHAR(5) NOT NULL, 
        C_DEPR_TYPE           CHAR(5) NOT NULL, 
        C_COLOR               CHAR(5) NOT NULL, 
        A_UNIT_PRICE_AMT      DECIMAL(19, 6), 
        C_UNIT_PRICE_UOM      CHAR(5) NOT NULL, 
        C_DANMARK             CHAR(5) NOT NULL, 
        C_REPAIRABLE          CHAR(5) NOT NULL, 
        A_SETTLEMENT_AMT      DECIMAL(19, 6), 
        C_SETTLEMENT_UOM      CHAR(5) NOT NULL, 
        C_DAMAGE_PRICETYPE    CHAR(5) NOT NULL, 
        N_SQ_METRES           DECIMAL(19, 6), 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_PURCHDTCOMPL_IND    CHAR(1) NOT NULL, 
        C_SP_REPLACEABLE      CHAR(5) NOT NULL, 
        C_MOTOR_ITEM_STAT     CHAR(5) NOT NULL DEFAULT '', 
        C_SCALEPOINT_STAT     CHAR(5) NOT NULL DEFAULT '', 
        N_SCALEPNT_ITEM_ID    VARCHAR(50) NOT NULL DEFAULT '', 
        C_OWN_GOODS_IND       CHAR(1) NOT NULL DEFAULT '', 
        C_BUY_BACK_IND        CHAR(1) NOT NULL DEFAULT '', 
        C_ITEM_LODARE_TYPE    CHAR(5) NOT NULL DEFAULT 'REGIT', 
        N_MAIN_ITEM_ID        CHAR(16), 
        C_COMP_VALUE_TYPE     CHAR(5) NOT NULL DEFAULT '', 
        C_VAT_REG_TYPE        CHAR(5) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP41401 ON ITEM_LODARE
(
        N_ITEM_LODARE_ID      ASC
);



CREATE INDEX XTP41403 ON ITEM_LODARE
(
        N_ITEM_LODARE_ID      ASC, 
        C_RCD_DEL             ASC
)
         CLUSTER;



CREATE INDEX XTP41405 ON ITEM_LODARE
(
        N_BIKE_FRAME_NBR      ASC
);



CREATE INDEX XTP41404 ON ITEM_LODARE
(
        N_MAIN_ITEM_ID        ASC
);



ALTER TABLE ITEM_LODARE
ADD CONSTRAINT XTP41401  PRIMARY KEY (N_ITEM_LODARE_ID);



ALTER TABLE ITEM_LODARE
ADD CONSTRAINT RTP29113  FOREIGN KEY (N_ITEM_LODARE_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_ITEM_ AFTER INSERT ON ITEM_LODARE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE ITEM_LODARE
      SET
        ITEM_LODARE.N_MAIN_ITEM_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ITEM_LODARE
            WHERE
              new.N_MAIN_ITEM_ID = ITEM_LODARE.N_ITEM_LODARE_ID
        )
 ;

CREATE TRIGGER tI_ITEM2 AFTER INSERT ON ITEM_LODARE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ITEM WHERE new.N_ITEM_LODARE_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert ITEM_LODARE because ITEM does not exist.');
        END
 ;

CREATE TRIGGER tD_ITEM_ AFTER DELETE ON ITEM_LODARE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ITEM_LODARE WHERE ITEM_LODARE.N_MAIN_ITEM_ID =
old.N_ITEM_LODARE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ITEM_LODARE because ITEM_LODARE exists.');
        END
 ;


   

CREATE TABLE ITEM_PAYMNT_XREF
(
        N_PYMNT_DTL_ID        CHAR(16) NOT NULL, 
        N_ITEM_ID             CHAR(16) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP41501 ON ITEM_PAYMNT_XREF
(
        N_PYMNT_DTL_ID        ASC, 
        N_ITEM_ID             ASC
)
         CLUSTER;



CREATE INDEX XTP41504 ON ITEM_PAYMNT_XREF
(
        N_ITEM_ID             ASC, 
        N_PYMNT_DTL_ID        ASC
);



ALTER TABLE ITEM_PAYMNT_XREF
ADD CONSTRAINT XTP41501  PRIMARY KEY (N_PYMNT_DTL_ID, N_ITEM_ID);



ALTER TABLE ITEM_PAYMNT_XREF
ADD CONSTRAINT RTP31902  FOREIGN KEY (N_PYMNT_DTL_ID)
                REFERENCES PAYMENT_DTL  (N_PYMNT_DTL_ID)
                ON DELETE RESTRICT;



ALTER TABLE ITEM_PAYMNT_XREF
ADD CONSTRAINT RTP29114  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_ITEM_ AFTER INSERT ON ITEM_PAYMNT_XREF
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert ITEM_PAYMNT_XREF because ITEM does not exist.');
        END
 ;

CREATE TRIGGER tI_ITEM2 AFTER INSERT ON ITEM_PAYMNT_XREF
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM PAYMENT_DTL WHERE new.N_PYMNT_DTL_ID =
PAYMENT_DTL.N_PYMNT_DTL_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert ITEM_PAYMNT_XREF because PAYMENT_DTL does not
exist.');
        END
 ;


   

CREATE TABLE ITEM_QUOTE
(
        N_ITEM_QUOTE_ID       CHAR(16) NOT NULL, 
        N_ITEM_ID             CHAR(16) NOT NULL, 
        C_QUOTE_TYPE          CHAR(5) NOT NULL, 
        D_QUOTE_DATE          TIMESTAMP NOT NULL, 
        C_MATCH_TYPE          CHAR(5) NOT NULL, 
        M_SUPPLIER            CHAR(50) NOT NULL, 
        A_QUOTE_AMT           DECIMAL(19, 6), 
        C_QUOTE_UOM           CHAR(5) NOT NULL, 
        T_TEXT                CHAR(50) NOT NULL, 
        C_MANUAL_FINAL_IND    CHAR(1) NOT NULL, 
        T_ACCESSORIES_TEXT    VARCHAR(254) NOT NULL, 
        A_ACCESSORIES_AMT     DECIMAL(19, 6), 
        C_ACCESSORIES_UOM     CHAR(5) NOT NULL, 
        N_EXTERNAL_ITEM_ID    VARCHAR(50) NOT NULL, 
        N_EXT_GROUP_ID        VARCHAR(50) NOT NULL, 
        C_MODEL_BRAND_TEXT    VARCHAR(255) NOT NULL, 
        C_MAN_SETTLMNT_IND    CHAR(1) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP41601 ON ITEM_QUOTE
(
        N_ITEM_QUOTE_ID       ASC
);



ALTER TABLE ITEM_QUOTE
ADD CONSTRAINT XTP41601  PRIMARY KEY (N_ITEM_QUOTE_ID);



ALTER TABLE ITEM_QUOTE
ADD CONSTRAINT RTP29115  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_ITEM_ AFTER INSERT ON ITEM_QUOTE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE ITEM_QUOTE
      SET
        ITEM_QUOTE.N_ITEM_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ITEM
            WHERE
              new.N_ITEM_ID = ITEM.N_ITEM_ID
        )
 ;


   

CREATE TABLE ITEM_RELSHP
(
        N_ITEM_ID1            CHAR(16) NOT NULL, 
        N_ITEM_ID2            CHAR(16) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP29501 ON ITEM_RELSHP
(
        N_ITEM_ID1            ASC, 
        N_ITEM_ID2            ASC
)
         CLUSTER;



ALTER TABLE ITEM_RELSHP
ADD CONSTRAINT XTP29501  PRIMARY KEY (N_ITEM_ID1, N_ITEM_ID2);



ALTER TABLE ITEM_RELSHP
ADD CONSTRAINT RTP29104  FOREIGN KEY (N_ITEM_ID2)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE ITEM_RELSHP
ADD CONSTRAINT RTP29103  FOREIGN KEY (N_ITEM_ID1)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_ITEM_ AFTER INSERT ON ITEM_RELSHP
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID2 = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert ITEM_RELSHP because ITEM does not exist.');
        END
 ;

CREATE TRIGGER tI_ITEM2 AFTER INSERT ON ITEM_RELSHP
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID1 = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert ITEM_RELSHP because ITEM does not exist.');
        END
 ;

CREATE TRIGGER tU_ITEM_ AFTER UPDATE ON ITEM_RELSHP
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID2 = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ITEM_RELSHP because ITEM does not exist.');
        END
 ;

CREATE TRIGGER tU_ITEM2 AFTER UPDATE ON ITEM_RELSHP
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID1 = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ITEM_RELSHP because ITEM does not exist.');
        END
 ;


   

CREATE TABLE ITEM_SITE
(
        N_ITEM_SITE_ID        CHAR(16) NOT NULL, 
        M_STREET_NAME         CHAR(32) NOT NULL, 
        M_CITY_NAME           CHAR(32) NOT NULL, 
        C_POSTAL_CODE         CHAR(9) NOT NULL, 
        C_COUNTRY             CHAR(5) NOT NULL, 
        M_STREET_NO           CHAR(9) NOT NULL, 
        M_FLOOR               CHAR(12) NOT NULL, 
        M_SUB_CITY_NAME       CHAR(32) NOT NULL, 
        M_FGN_ADR             CHAR(32) NOT NULL, 
        M_FGN_SUB_ADR         CHAR(32) NOT NULL, 
        M_FGN_CITY_ZIP        CHAR(32) NOT NULL, 
        C_OBJECT_TYPE_ID      CHAR(5) NOT NULL, 
        C_KRAK_GEO_CODE_X     DECIMAL(19, 6), 
        C_KRAK_GEO_CODE_Y     DECIMAL(19, 6), 
        C_OIS_GEO_CODE_X      DECIMAL(19, 6), 
        C_OIS_GEO_CODE_Y      DECIMAL(19, 6), 
        A_SQUARE_METERS       DECIMAL(19, 6), 
        C_FLOORS              CHAR(1) NOT NULL, 
        C_CONTRUCTION_YEAR    INTEGER, 
        C_WALL                CHAR(5) NOT NULL, 
        C_ROOF                CHAR(5) NOT NULL, 
        C_HEATING             CHAR(5) NOT NULL, 
        C_WATER_PROTECT       CHAR(5) NOT NULL, 
        A_TOTAL_FLOOR         DECIMAL(19, 6), 
        C_ALT_PLACE_IND       CHAR(1) NOT NULL, 
        C_SECURITY            CHAR(5) NOT NULL, 
        F_FOSTER_CHILDREN     INTEGER, 
        F_PERSONS             INTEGER, 
        A_INSURED_SUM         DECIMAL(19, 6), 
        C_INSURED_SUM_UOM     CHAR(5) NOT NULL, 
        A_SPC_CONTENT_SUM     DECIMAL(19, 6) DEFAULT 0, 
        C_SPC_CONT_UOM        CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_COINS_STAMPS        DECIMAL(19, 6), 
        C_COINS_STAMPS_UOM    CHAR(5) NOT NULL, 
        C_GTI_NO              CHAR(7) NOT NULL, 
        N_MATR_NO             CHAR(10) NOT NULL, 
        C_OTH_COV_ADR_IND     CHAR(1) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        A_GARAGE_AREA         DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_RENOVATION          CHAR(5) NOT NULL DEFAULT '', 
        C_PRESERVATION        CHAR(5) NOT NULL DEFAULT '', 
        A_INITIAL_AMOUNT      DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_BUSS_IN_PROPERTY    CHAR(5) NOT NULL DEFAULT '', 
        A_EXTENSION_AREA      DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        D_ACTIVITY_END        TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        C_CONDITION_REPORT    CHAR(5) NOT NULL DEFAULT '', 
        A_VALUABLES_SUM       NUMERIC(19, 6) NOT NULL DEFAULT 0, 
        C_VALUABLES_UOM       CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_CONTNT_TOOLS_SUM    NUMERIC(19, 6) NOT NULL DEFAULT 0, 
        C_CONTNT_TOOLS_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        C_PRIVATE_INS_IND     CHAR(1) NOT NULL DEFAULT '', 
        C_UNFAVOU_CUST_IND    CHAR(1) NOT NULL DEFAULT '', 
        C_CLAIMS_COUNT_KT     CHAR(5) NOT NULL DEFAULT '', 
        C_BUSINESS_TYPE       CHAR(6) NOT NULL DEFAULT '', 
        A_BUSINESS_AREA       DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        Q_NUM_OF_TOILETS      INTEGER NOT NULL DEFAULT 0
);



CREATE UNIQUE INDEX XTP29601 ON ITEM_SITE
(
        N_ITEM_SITE_ID        ASC
);



ALTER TABLE ITEM_SITE
ADD CONSTRAINT XTP29601  PRIMARY KEY (N_ITEM_SITE_ID);



ALTER TABLE ITEM_SITE
ADD CONSTRAINT RTP29105  FOREIGN KEY (N_ITEM_SITE_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_ITEM_ AFTER INSERT ON ITEM_SITE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ITEM WHERE new.N_ITEM_SITE_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert ITEM_SITE because ITEM does not exist.');
        END
 ;

CREATE TRIGGER tU_ITEM_ AFTER UPDATE ON ITEM_SITE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM ITEM WHERE new.N_ITEM_SITE_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ITEM_SITE because ITEM does not exist.');
        END
 ;


   

CREATE TABLE ITEM_TRAVEL
(
        N_ITEM_TRAVEL_ID      CHAR(16) NOT NULL, 
        N_TRAVELDAYS_SCAND    INTEGER NOT NULL DEFAULT 0, 
        N_TRAVELDAYS_EUROP    INTEGER NOT NULL DEFAULT 0, 
        N_TRAVELDAYS_WORLD    INTEGER NOT NULL DEFAULT 0, 
        A_LUGGAGE_SUM         DECIMAL(19, 6), 
        C_LUGGAGE_UOM         CHAR(5) NOT NULL DEFAULT 'DKK', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP65201 ON ITEM_TRAVEL
(
        N_ITEM_TRAVEL_ID      ASC
)
         CLUSTER;



ALTER TABLE ITEM_TRAVEL
ADD CONSTRAINT XTP65201  PRIMARY KEY (N_ITEM_TRAVEL_ID);



ALTER TABLE ITEM_TRAVEL
ADD CONSTRAINT RTP29119  FOREIGN KEY (N_ITEM_TRAVEL_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_ITEM_ AFTER INSERT ON ITEM_TRAVEL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ITEM WHERE new.N_ITEM_TRAVEL_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert ITEM_TRAVEL because ITEM does not exist.');
        END
 ;


   

CREATE TABLE JOB_CLASS
(
        N_JOB_CLS_ID          CHAR(16) NOT NULL, 
        C_JOB_CLS             CHAR(4) NOT NULL, 
        T_JOB_CLS_DESC        CHAR(60) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP29701 ON JOB_CLASS
(
        N_JOB_CLS_ID          ASC
);



ALTER TABLE JOB_CLASS
ADD CONSTRAINT XTP29701  PRIMARY KEY (N_JOB_CLS_ID);



ALTER TABLE JOB_CLASS
ADD CONSTRAINT RTP29106  FOREIGN KEY (N_JOB_CLS_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_JOB_C AFTER INSERT ON JOB_CLASS
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ITEM WHERE new.N_JOB_CLS_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert JOB_CLASS because ITEM does not exist.');
        END
 ;

CREATE TRIGGER tU_JOB_C AFTER UPDATE ON JOB_CLASS
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM ITEM WHERE new.N_JOB_CLS_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update JOB_CLASS because ITEM does not exist.');
        END
 ;


   

CREATE TABLE JOURNAL_ENTRY
(
        N_JRNL_ENT_ID         CHAR(16) NOT NULL, 
        N_CLM_LDGR_ID         CHAR(16) NOT NULL, 
        N_FIN_TX_ID           CHAR(16) NOT NULL, 
        C_BALANCE_OWNER       CHAR(5) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        C_JRNL_ENT_TYP        CHAR(5) NOT NULL, 
        C_SRVC_CTGY_TYP       CHAR(5) NOT NULL, 
        A_JRNL_ENT            DECIMAL(19, 6), 
        C_CURRENCY_UOM        CHAR(5) NOT NULL, 
        C_SERVICE             CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        N_SAP_ACCT            CHAR(6) NOT NULL, 
        N_SAP_CENTER_CD       CHAR(5) NOT NULL, 
        C_SAP_COSTPLACE       CHAR(4) NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP29801 ON JOURNAL_ENTRY
(
        N_JRNL_ENT_ID         ASC
)
         CLUSTER;



CREATE INDEX XTP29809 ON JOURNAL_ENTRY
(
        N_FIN_TX_ID           ASC, 
        C_RCD_DEL             ASC, 
        N_CLM_LDGR_ID         ASC
);



ALTER TABLE JOURNAL_ENTRY
ADD CONSTRAINT XTP29801  PRIMARY KEY (N_JRNL_ENT_ID);



ALTER TABLE JOURNAL_ENTRY
ADD CONSTRAINT RTP27501  FOREIGN KEY (N_FIN_TX_ID)
                REFERENCES FINANCIAL_TX  (N_FIN_TX_ID)
                ON DELETE RESTRICT;



ALTER TABLE JOURNAL_ENTRY
ADD CONSTRAINT RTP22801  FOREIGN KEY (N_CLM_LDGR_ID)
                REFERENCES CLAIM_LDGR  (N_CLM_LDGR_ID)
                ON DELETE RESTRICT;



ALTER TABLE JOURNAL_ENTRY
ADD CONSTRAINT RTP30006  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE JOURNAL_ENTRY
ADD CONSTRAINT RTP22203  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_JOURN AFTER INSERT ON JOURNAL_ENTRY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM CLAIM_LDGR WHERE new.N_CLM_LDGR_ID = CLAIM_LDGR.N_CLM_LDGR_ID))

     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert JOURNAL_ENTRY because CLAIM_LDGR does not exist.');
        END
 ;

CREATE TRIGGER tI_JOUR2 AFTER INSERT ON JOURNAL_ENTRY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM FINANCIAL_TX WHERE new.N_FIN_TX_ID = FINANCIAL_TX.N_FIN_TX_ID))

     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert JOURNAL_ENTRY because FINANCIAL_TX does not
exist.');
        END
 ;

CREATE TRIGGER tI_JOUR3 AFTER INSERT ON JOURNAL_ENTRY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE JOURNAL_ENTRY
      SET
        JOURNAL_ENTRY.N_CLAIM_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIM
            WHERE
              new.N_CLAIM_ID = CLAIM.N_CLAIM_ID
        )
 ;

CREATE TRIGGER tI_JOUR4 AFTER INSERT ON JOURNAL_ENTRY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE JOURNAL_ENTRY
      SET
        JOURNAL_ENTRY.N_LINE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM LINE
            WHERE
              new.N_LINE_ID = LINE.N_LINE_ID
        )
 ;

CREATE TRIGGER tU_JOURN AFTER UPDATE ON JOURNAL_ENTRY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM CLAIM_LDGR WHERE new.N_CLM_LDGR_ID = CLAIM_LDGR.N_CLM_LDGR_ID))

     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update JOURNAL_ENTRY because CLAIM_LDGR does not exist.');
        END
 ;

CREATE TRIGGER tU_JOUR2 AFTER UPDATE ON JOURNAL_ENTRY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM FINANCIAL_TX WHERE new.N_FIN_TX_ID = FINANCIAL_TX.N_FIN_TX_ID))

     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update JOURNAL_ENTRY because FINANCIAL_TX does not
exist.');
        END
 ;


   

CREATE TABLE LIABILITY
(
        N_LIABILITY_ID        CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        N_INVL_ROLE_ID        CHAR(16) NOT NULL, 
        N_PCT_LIABLE_LOW      INTEGER, 
        N_PCT_LIABLE_HGH      INTEGER, 
        Q_LIMIT_VAL           DECIMAL(19, 6), 
        C_LIMIT_UOM           CHAR(5) NOT NULL, 
        Q_3RDPTY_DED_VAL      DECIMAL(19, 6), 
        C_ESTB_CODE           CHAR(3) NOT NULL, 
        C_RECOVERY_CODE       CHAR(3) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_3RDPTY_DED_UOM      CHAR(5) NOT NULL
);



CREATE UNIQUE INDEX XTP29901 ON LIABILITY
(
        N_LIABILITY_ID        ASC
);



CREATE UNIQUE INDEX XTP29902 ON LIABILITY
(
        N_CLAIM_ID            ASC, 
        N_LIABILITY_ID        ASC
)
         CLUSTER;



CREATE UNIQUE INDEX XTP29903 ON LIABILITY
(
        N_LINE_ID             ASC, 
        N_LIABILITY_ID        ASC
);



CREATE UNIQUE INDEX XTP29904 ON LIABILITY
(
        N_INVL_ROLE_ID        ASC, 
        N_LIABILITY_ID        ASC
);



ALTER TABLE LIABILITY
ADD CONSTRAINT XTP29901  PRIMARY KEY (N_LIABILITY_ID);



ALTER TABLE LIABILITY
ADD CONSTRAINT RTP30015  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE LIABILITY
ADD CONSTRAINT RTP28908  FOREIGN KEY (N_INVL_ROLE_ID)
                REFERENCES INVOLVEMENT_ROLE  (N_INVL_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE LIABILITY
ADD CONSTRAINT RTP22214  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



   

CREATE TABLE LINE
(
        N_LINE_ID             CHAR(16) NOT NULL, 
        N_CLAIMANT_ROLE_ID    CHAR(16) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        C_CAUSE_OF_LOSS       CHAR(5) NOT NULL, 
        C_LINE_TYPE           CHAR(5) NOT NULL, 
        C_LINE_CTGY           CHAR(5) NOT NULL, 
        C_COMPLEXITY          CHAR(5) NOT NULL, 
        C_SETT_METH           CHAR(5) NOT NULL, 
        C_REGLTY_STATE        CHAR(5) NOT NULL, 
        C_HAND_STAT           CHAR(5) NOT NULL, 
        C_CLOSE_RSN           CHAR(5) NOT NULL, 
        C_MAJOR_PERL          CHAR(5) NOT NULL, 
        C_RESERVE_CTGRY       CHAR(5) NOT NULL, 
        C_REGLTY_COUNTRY      CHAR(5) NOT NULL, 
        Q_PAID_LS_AMT_VAL     DECIMAL(19, 6), 
        C_PAID_LS_AMT_UOM     CHAR(5) NOT NULL, 
        D_CREATION            TIMESTAMP NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        D_FIN_CLOSE_DT        TIMESTAMP NOT NULL, 
        C_FIN_CLOSE_RSN       CHAR(5) NOT NULL, 
        D_FIN_REOPEN_DT       TIMESTAMP NOT NULL, 
        C_CURRENCY_UOM        CHAR(5) NOT NULL, 
        N_FINAL_PYMNT_CTR     INTEGER, 
        M_REGLTY_COUNTY       CHAR(30) NOT NULL, 
        N_POL_COV_ID          CHAR(16) NOT NULL, 
        C_LINE_RSRV_METH      CHAR(5) NOT NULL, 
        C_LEG_SALVGE_STAT     CHAR(5) NOT NULL, 
        C_LEG_SUBRO_STAT      CHAR(5) NOT NULL, 
        C_EXPENSE_ONLY_IND    CHAR(1) NOT NULL, 
        C_FIN_STAT            CHAR(5) NOT NULL, 
        C_RCVRY_IND           CHAR(1) NOT NULL, 
        C_SIU_IND             CHAR(1) NOT NULL, 
        C_NAT_OF_OPRTN        CHAR(5) NOT NULL, 
        C_PRIM_EXC            CHAR(5) NOT NULL, 
        C_PROP_TYP            CHAR(5) NOT NULL, 
        C_VAL_PRD_CTLG_IND    CHAR(1) NOT NULL, 
        N_LINE_CATLG_REFN     CHAR(12) NOT NULL, 
        C_LOSS_CHAR           CHAR(5) NOT NULL, 
        C_3RD_PRTY_IND        CHAR(1) NOT NULL, 
        C_LOC_OF_LOSS         CHAR(5) NOT NULL, 
        C_INIT_ESTIMATE       CHAR(5) NOT NULL, 
        C_SUB_COL             CHAR(5) NOT NULL, 
        C_ESTIMATE_STATUS     CHAR(5) NOT NULL, 
        C_MANUAL_SIU_IND      CHAR(1) NOT NULL, 
        D_LAST_MANL_UPDT      TIMESTAMP NOT NULL, 
        N_MANL_MOD_OE_ID      CHAR(16) NOT NULL, 
        C_INIT_MANL_IND       CHAR(1) NOT NULL, 
        C_COV_MATCH_STAT      CHAR(5) NOT NULL, 
        C_PROD_COV            CHAR(9) NOT NULL, 
        C_CM_FORCED_IND       CHAR(1) NOT NULL, 
        A_DEDUCT_AMT          DECIMAL(19, 6), 
        C_DEDUCT_UOM          CHAR(5) NOT NULL, 
        C_DED_VER_IND         CHAR(1) NOT NULL, 
        C_DED_PER_IND         CHAR(1) NOT NULL DEFAULT '', 
        C_PHYS_FILE_IND       CHAR(1) NOT NULL, 
        C_CLAIM_ONLY_IND      CHAR(1) NOT NULL, 
        C_SETTLEMENT_RISK     CHAR(5) NOT NULL DEFAULT '5', 
        C_LEGISLATION         CHAR(5) NOT NULL, 
        C_OTH_INS_TYPE        CHAR(5) NOT NULL, 
        C_FORCE_REASON        CHAR(5) NOT NULL, 
        A_INJ_ESTIMATE_AMT    DECIMAL(19, 6), 
        C_INJ_ESTIMATE_UOM    CHAR(5) NOT NULL, 
        C_ASSESS_NEED_IND     CHAR(1) NOT NULL, 
        C_ASS_CLM_OWN_IND     CHAR(1) NOT NULL, 
        C_CM_DISPLAY_IND      CHAR(1) NOT NULL DEFAULT '', 
        C_DEDUCTIBLE_TYPE     CHAR(5) NOT NULL DEFAULT 'DTAMT', 
        C_DED_MANUAL_IND      CHAR(1) NOT NULL DEFAULT 'N', 
        A_DED_MAX_AMT         DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_DED_MAX_UOM         CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_DED_MAX_PCT_AMT     DECIMAL(19, 6), 
        C_DED_MAX_PCT_UOM     CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_DED_MIN_PCT_AMT     DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_DED_MIN_PCT_UOM     CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_DEDUCTIBLE_PCT      DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        C_PASSENG_IN_VEHIC    CHAR(5) NOT NULL DEFAULT '', 
        D_FIRST_COVMTCH_TS    TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        T_TRIVIAL_LIMIT       VARCHAR(30) NOT NULL DEFAULT '', 
        C_PRUNING_IND         CHAR(1) NOT NULL DEFAULT '', 
        T_CREDITCARD_INFO     VARCHAR(256) NOT NULL DEFAULT '', 
        C_ACKNOWLEDGE         CHAR(5) NOT NULL DEFAULT '', 
        C_OBJECT_CATEGORY     CHAR(5) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP30001 ON LINE
(
        N_LINE_ID             ASC
)
         CLUSTER;



CREATE UNIQUE INDEX XTP30009 ON LINE
(
        N_LINE_ID             ASC, 
        C_COV_MATCH_STAT      ASC, 
        C_RCD_DEL             ASC
);



CREATE INDEX XTP30010 ON LINE
(
        N_CLAIM_ID            ASC, 
        C_RCD_DEL             ASC, 
        C_HAND_STAT           ASC
);



CREATE INDEX XTP30014 ON LINE
(
        C_LINE_TYPE           ASC, 
        C_HAND_STAT           ASC, 
        C_RCD_DEL             ASC, 
        N_CLAIM_ID            ASC, 
        N_LINE_ID             ASC, 
        N_CLAIMANT_ROLE_ID    ASC, 
        N_LAST_UPDT           ASC
);



ALTER TABLE LINE
ADD CONSTRAINT XTP30001  PRIMARY KEY (N_LINE_ID);



ALTER TABLE LINE
ADD CONSTRAINT RTP32602  FOREIGN KEY (N_POL_COV_ID)
                REFERENCES POL_COV  (N_POL_COV_ID)
                ON DELETE SET NULL;



ALTER TABLE LINE
ADD CONSTRAINT RTP31312  FOREIGN KEY (N_MANL_MOD_OE_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE LINE
ADD CONSTRAINT RTP22215  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



ALTER TABLE LINE
ADD CONSTRAINT RTP23205  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE PAYMENT_DTL
ADD CONSTRAINT RTP30020  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE ASSMT_LINE_XREF
ADD CONSTRAINT RTP30027  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE LOG_SHARING_REPORT
ADD CONSTRAINT RTP30032  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE LOG_SETTLE_REPORT
ADD CONSTRAINT RTP30031  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE PERFORMER
ADD CONSTRAINT RTP30021  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE SET NULL;



ALTER TABLE LINE_NEGOTIATION
ADD CONSTRAINT RTP30019  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE LIABILITY
ADD CONSTRAINT RTP30015  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE OUT_INVOICE_DTL
ADD CONSTRAINT RTP30030  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE ASSESSOR_REQUEST
ADD CONSTRAINT RTP30003  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE CLAIM_LDGR
ADD CONSTRAINT RTP30005  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE JOURNAL_ENTRY
ADD CONSTRAINT RTP30006  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE BOOKKEEPING
ADD CONSTRAINT RTP30004  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE RESERVE
ADD CONSTRAINT RTP30028  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE COVERED_ISSUE
ADD CONSTRAINT RTP30012  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE LINE_AUTHORITY
ADD CONSTRAINT RTP30016  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE RESERVE_DTL
ADD CONSTRAINT RTP30002  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE FILE_NOTE
ADD CONSTRAINT RTP30014  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE SET NULL;



ALTER TABLE LINE_DED_DEAL
ADD CONSTRAINT RTP30017  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE LINE_LITIGATION
ADD CONSTRAINT RTP30018  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECEIPT_DTL
ADD CONSTRAINT RTP30022  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE INC_INVOICE_DTL
ADD CONSTRAINT RTP30029  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECURRING_PAYMENT
ADD CONSTRAINT RTP30023  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE BI_BRNKSAFR
ADD CONSTRAINT RTP30008  FOREIGN KEY (TRSP_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE BI_BRANDKS_OPG
ADD CONSTRAINT RTP30007  FOREIGN KEY (TRSP_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE FINANCIAL_TX
ADD CONSTRAINT RTP30009  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE PAYMENT
ADD CONSTRAINT RTP30010  FOREIGN KEY (N_INT_PAY_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE DEDUC_DIFFERENCE
ADD CONSTRAINT RTP30033  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE OTHER_INSURANCE
ADD CONSTRAINT RTP30035  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE INJURY_COMP
ADD CONSTRAINT RTP30034  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE AUTOTAKS_REPORT
ADD CONSTRAINT RTP30034  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE SUB_LINE_TOPALARM
ADD CONSTRAINT RTP30012  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_LINE AFTER INSERT ON LINE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE LINE
      SET
        LINE.N_MANL_MOD_OE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ORG_ENTITY
            WHERE
              new.N_MANL_MOD_OE_ID = ORG_ENTITY.N_ORG_ENTY_ID
        )
 ;

CREATE TRIGGER tI_LINE2 AFTER INSERT ON LINE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE LINE
      SET
        LINE.N_POL_COV_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM POL_COV
            WHERE
              new.N_POL_COV_ID = POL_COV.N_POL_COV_ID
        )
 ;

CREATE TRIGGER tD_LINE AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM SUB_LINE_TOPALARM WHERE SUB_LINE_TOPALARM.N_LINE_ID =
old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because SUB_LINE_TOPALARM exists.');
        END
 ;

CREATE TRIGGER tD_LINE2 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM AUTOTAKS_REPORT WHERE AUTOTAKS_REPORT.N_LINE_ID =
old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because AUTOTAKS_REPORT exists.');
        END
 ;

CREATE TRIGGER tD_LINE3 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INJURY_COMP WHERE INJURY_COMP.N_LINE_ID = old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because INJURY_COMP exists.');
        END
 ;

CREATE TRIGGER tD_LINE4 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM OTHER_INSURANCE WHERE OTHER_INSURANCE.N_LINE_ID =
old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because OTHER_INSURANCE exists.');
        END
 ;

CREATE TRIGGER tD_LINE5 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM DEDUC_DIFFERENCE WHERE DEDUC_DIFFERENCE.N_LINE_ID =
old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because DEDUC_DIFFERENCE exists.');
        END
 ;

CREATE TRIGGER tD_LINE6 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PAYMENT WHERE PAYMENT.N_INT_PAY_LINE_ID = old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because PAYMENT exists.');
        END
 ;

CREATE TRIGGER tD_LINE7 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM FINANCIAL_TX WHERE FINANCIAL_TX.N_LINE_ID = old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because FINANCIAL_TX exists.');
        END
 ;

CREATE TRIGGER tD_LINE8 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM BI_BRANDKS_OPG WHERE BI_BRANDKS_OPG.TRSP_ID = old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because BI_BRANDKS_OPG exists.');
        END
 ;

CREATE TRIGGER tD_LINE9 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM BI_BRNKSAFR WHERE BI_BRNKSAFR.TRSP_ID = old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because BI_BRNKSAFR exists.');
        END
 ;

CREATE TRIGGER tD_LIN10 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECURRING_PAYMENT WHERE RECURRING_PAYMENT.N_LINE_ID =
old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because RECURRING_PAYMENT exists.');
        END
 ;

CREATE TRIGGER tD_LIN11 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INC_INVOICE_DTL WHERE INC_INVOICE_DTL.N_LINE_ID =
old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because INC_INVOICE_DTL exists.');
        END
 ;

CREATE TRIGGER tD_LIN12 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECEIPT_DTL WHERE RECEIPT_DTL.N_LINE_ID = old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because RECEIPT_DTL exists.');
        END
 ;

CREATE TRIGGER tD_LIN13 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LINE_LITIGATION WHERE LINE_LITIGATION.N_LINE_ID =
old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because LINE_LITIGATION exists.');
        END
 ;

CREATE TRIGGER tD_LIN14 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
    UPDATE FILE_NOTE
      SET
        FILE_NOTE.N_LINE_ID = NULL
      WHERE
        FILE_NOTE.N_LINE_ID = old.N_LINE_ID
 ;

CREATE TRIGGER tD_LIN15 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RESERVE_DTL WHERE RESERVE_DTL.N_LINE_ID = old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because RESERVE_DTL exists.');
        END
 ;

CREATE TRIGGER tD_LIN16 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LINE_AUTHORITY WHERE LINE_AUTHORITY.N_LINE_ID = old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because LINE_AUTHORITY exists.');
        END
 ;

CREATE TRIGGER tD_LIN17 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM COVERED_ISSUE WHERE COVERED_ISSUE.N_LINE_ID = old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because COVERED_ISSUE exists.');
        END
 ;

CREATE TRIGGER tD_LIN18 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RESERVE WHERE RESERVE.N_LINE_ID = old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because RESERVE exists.');
        END
 ;

CREATE TRIGGER tD_LIN19 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM BOOKKEEPING WHERE BOOKKEEPING.N_LINE_ID = old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because BOOKKEEPING exists.');
        END
 ;

CREATE TRIGGER tD_LIN20 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM JOURNAL_ENTRY WHERE JOURNAL_ENTRY.N_LINE_ID = old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because JOURNAL_ENTRY exists.');
        END
 ;

CREATE TRIGGER tD_LIN21 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CLAIM_LDGR WHERE CLAIM_LDGR.N_LINE_ID = old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because CLAIM_LDGR exists.');
        END
 ;

CREATE TRIGGER tD_LIN22 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ASSESSOR_REQUEST WHERE ASSESSOR_REQUEST.N_LINE_ID =
old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because ASSESSOR_REQUEST exists.');
        END
 ;

CREATE TRIGGER tD_LIN23 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM OUT_INVOICE_DTL WHERE OUT_INVOICE_DTL.N_LINE_ID =
old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because OUT_INVOICE_DTL exists.');
        END
 ;

CREATE TRIGGER tD_LIN24 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LIABILITY WHERE LIABILITY.N_LINE_ID = old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because LIABILITY exists.');
        END
 ;

CREATE TRIGGER tD_LIN25 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LINE_NEGOTIATION WHERE LINE_NEGOTIATION.N_LINE_ID =
old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because LINE_NEGOTIATION exists.');
        END
 ;

CREATE TRIGGER tD_LIN26 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
    UPDATE PERFORMER
      SET
        PERFORMER.N_LINE_ID = NULL
      WHERE
        PERFORMER.N_LINE_ID = old.N_LINE_ID
 ;

CREATE TRIGGER tD_LIN27 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LOG_SETTLE_REPORT WHERE LOG_SETTLE_REPORT.N_LINE_ID =
old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because LOG_SETTLE_REPORT exists.');
        END
 ;

CREATE TRIGGER tD_LIN28 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LOG_SHARING_REPORT WHERE LOG_SHARING_REPORT.N_LINE_ID =
old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because LOG_SHARING_REPORT exists.');
        END
 ;

CREATE TRIGGER tD_LIN29 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ASSMT_LINE_XREF WHERE ASSMT_LINE_XREF.N_LINE_ID =
old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because ASSMT_LINE_XREF exists.');
        END
 ;

CREATE TRIGGER tD_LIN30 AFTER DELETE ON LINE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PAYMENT_DTL WHERE PAYMENT_DTL.N_LINE_ID = old.N_LINE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LINE because PAYMENT_DTL exists.');
        END
 ;

CREATE TRIGGER tU_LINE AFTER UPDATE ON LINE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM LINE WHERE new.N_LINE_ID <> old.N_LINE_ID)) AND
     (0 < (SELECT count(*) FROM RECURRING_PAYMENT WHERE RECURRING_PAYMENT.N_LINE_ID =
old.N_LINE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update LINE because RECURRING_PAYMENT exists.');
        END
 ;

CREATE TRIGGER tU_LINE2 AFTER UPDATE ON LINE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM LINE WHERE new.N_LINE_ID <> old.N_LINE_ID)) AND
     (0 < (SELECT count(*) FROM INC_INVOICE_DTL WHERE INC_INVOICE_DTL.N_LINE_ID = old.N_LINE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update LINE because INC_INVOICE_DTL exists.');
        END
 ;

CREATE TRIGGER tU_LINE3 AFTER UPDATE ON LINE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM LINE WHERE new.N_LINE_ID <> old.N_LINE_ID)) AND
     (0 < (SELECT count(*) FROM RECEIPT_DTL WHERE RECEIPT_DTL.N_LINE_ID = old.N_LINE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update LINE because RECEIPT_DTL exists.');
        END
 ;

CREATE TRIGGER tU_LINE4 AFTER UPDATE ON LINE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM LINE WHERE new.N_LINE_ID <> old.N_LINE_ID)) AND
     (0 < (SELECT count(*) FROM LINE_LITIGATION WHERE LINE_LITIGATION.N_LINE_ID = old.N_LINE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update LINE because LINE_LITIGATION exists.');
        END
 ;

CREATE TRIGGER tU_LINE5 AFTER UPDATE ON LINE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LINE WHERE new.N_LINE_ID <> old.N_LINE_ID))
     UPDATE FILE_NOTE
       SET
         FILE_NOTE.N_LINE_ID = NULL
       WHERE
         FILE_NOTE.N_LINE_ID = old.N_LINE_ID
 ;

CREATE TRIGGER tU_LINE6 AFTER UPDATE ON LINE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM LINE WHERE new.N_LINE_ID <> old.N_LINE_ID)) AND
     (0 < (SELECT count(*) FROM RESERVE_DTL WHERE RESERVE_DTL.N_LINE_ID = old.N_LINE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update LINE because RESERVE_DTL exists.');
        END
 ;

CREATE TRIGGER tU_LINE7 AFTER UPDATE ON LINE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM LINE WHERE new.N_LINE_ID <> old.N_LINE_ID)) AND
     (0 < (SELECT count(*) FROM LINE_AUTHORITY WHERE LINE_AUTHORITY.N_LINE_ID = old.N_LINE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update LINE because LINE_AUTHORITY exists.');
        END
 ;

CREATE TRIGGER tU_LINE8 AFTER UPDATE ON LINE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM LINE WHERE new.N_LINE_ID <> old.N_LINE_ID)) AND
     (0 < (SELECT count(*) FROM COVERED_ISSUE WHERE COVERED_ISSUE.N_LINE_ID = old.N_LINE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update LINE because COVERED_ISSUE exists.');
        END
 ;

CREATE TRIGGER tU_LINE9 AFTER UPDATE ON LINE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM LINE WHERE new.N_LINE_ID <> old.N_LINE_ID)) AND
     (0 < (SELECT count(*) FROM LINE_NEGOTIATION WHERE LINE_NEGOTIATION.N_LINE_ID =
old.N_LINE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update LINE because LINE_NEGOTIATION exists.');
        END
 ;

CREATE TRIGGER tU_LIN10 AFTER UPDATE ON LINE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LINE WHERE new.N_LINE_ID <> old.N_LINE_ID))
     UPDATE PERFORMER
       SET
         PERFORMER.N_LINE_ID = NULL
       WHERE
         PERFORMER.N_LINE_ID = old.N_LINE_ID
 ;

CREATE TRIGGER tU_LIN11 AFTER UPDATE ON LINE
     FOR EACH ROW MODE DB2SQL
    UPDATE LINE
      SET
        LINE.N_POL_COV_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM POL_COV
            WHERE
              new.N_POL_COV_ID = POL_COV.N_POL_COV_ID
        )
 ;


   

CREATE TABLE LINE_AUTHORITY
(
        N_LINE_AUTH_ID        CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        C_FIN_ENT_TYP         CHAR(5) NOT NULL, 
        A_REQUEST             DECIMAL(19, 6), 
        A_APPROVED            DECIMAL(19, 6), 
        C_CURRENCY_UOM        CHAR(5) NOT NULL, 
        N_REQUESTOR_ID        CHAR(16) NOT NULL, 
        N_APPROVER_ID         CHAR(16) NOT NULL, 
        D_AUTH_EXP_DT         TIMESTAMP NOT NULL, 
        C_AUTH_STAT           CHAR(5) NOT NULL, 
        C_NOTIFY              CHAR(5) NOT NULL, 
        N_NOTIFY_ID           CHAR(16) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP30101 ON LINE_AUTHORITY
(
        N_LINE_AUTH_ID        ASC
);



ALTER TABLE LINE_AUTHORITY
ADD CONSTRAINT XTP30101  PRIMARY KEY (N_LINE_AUTH_ID);



ALTER TABLE LINE_AUTHORITY
ADD CONSTRAINT RTP30016  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_LINE_ AFTER INSERT ON LINE_AUTHORITY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM LINE WHERE new.N_LINE_ID = LINE.N_LINE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert LINE_AUTHORITY because LINE does not exist.');
        END
 ;

CREATE TRIGGER tU_LINE_ AFTER UPDATE ON LINE_AUTHORITY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM LINE WHERE new.N_LINE_ID = LINE.N_LINE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update LINE_AUTHORITY because LINE does not exist.');
        END
 ;


   

CREATE TABLE LINE_LITIGATION
(
        N_LINE_LTGTN_ID       CHAR(16) NOT NULL, 
        N_LTGTN_ID            CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP30301 ON LINE_LITIGATION
(
        N_LINE_LTGTN_ID       ASC
);



CREATE INDEX XTP30302 ON LINE_LITIGATION
(
        N_LINE_ID             ASC, 
        C_RCD_DEL             ASC, 
        N_LTGTN_ID            ASC
);



ALTER TABLE LINE_LITIGATION
ADD CONSTRAINT XTP30301  PRIMARY KEY (N_LINE_LTGTN_ID);



ALTER TABLE LINE_LITIGATION
ADD CONSTRAINT RTP30502  FOREIGN KEY (N_LTGTN_ID)
                REFERENCES LITIGATION  (N_LTGTN_ID)
                ON DELETE RESTRICT;



ALTER TABLE LINE_LITIGATION
ADD CONSTRAINT RTP30018  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_LINE_ AFTER INSERT ON LINE_LITIGATION
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM LINE WHERE new.N_LINE_ID = LINE.N_LINE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert LINE_LITIGATION because LINE does not exist.');
        END
 ;

CREATE TRIGGER tI_LINE2 AFTER INSERT ON LINE_LITIGATION
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM LITIGATION WHERE new.N_LTGTN_ID = LITIGATION.N_LTGTN_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert LINE_LITIGATION because LITIGATION does not
exist.');
        END
 ;

CREATE TRIGGER tU_LINE_ AFTER UPDATE ON LINE_LITIGATION
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM LINE WHERE new.N_LINE_ID = LINE.N_LINE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update LINE_LITIGATION because LINE does not exist.');
        END
 ;

CREATE TRIGGER tU_LINE2 AFTER UPDATE ON LINE_LITIGATION
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM LITIGATION WHERE new.N_LTGTN_ID = LITIGATION.N_LTGTN_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update LINE_LITIGATION because LITIGATION does not
exist.');
        END
 ;


   

CREATE TABLE LINE_NEGOTIATION
(
        N_LINE_NGTN_ID        CHAR(16) NOT NULL, 
        N_NEGOTIATION_ID      CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        C_CURRENCY_UOM        CHAR(5) NOT NULL, 
        C_PREF_CURR_UOM       CHAR(5) NOT NULL, 
        D_CONV_DT             TIMESTAMP NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP30401 ON LINE_NEGOTIATION
(
        N_LINE_NGTN_ID        ASC
);



CREATE INDEX XTP30402 ON LINE_NEGOTIATION
(
        N_LINE_ID             ASC, 
        N_NEGOTIATION_ID      ASC
)
         CLUSTER;



ALTER TABLE LINE_NEGOTIATION
ADD CONSTRAINT XTP30401  PRIMARY KEY (N_LINE_NGTN_ID);



ALTER TABLE LINE_NEGOTIATION
ADD CONSTRAINT RTP30902  FOREIGN KEY (N_NEGOTIATION_ID)
                REFERENCES NEGOTIATION  (N_NEGOTIATION_ID)
                ON DELETE RESTRICT;



ALTER TABLE LINE_NEGOTIATION
ADD CONSTRAINT RTP30019  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_LINE_ AFTER INSERT ON LINE_NEGOTIATION
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM LINE WHERE new.N_LINE_ID = LINE.N_LINE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert LINE_NEGOTIATION because LINE does not exist.');
        END
 ;

CREATE TRIGGER tI_LINE2 AFTER INSERT ON LINE_NEGOTIATION
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM NEGOTIATION WHERE new.N_NEGOTIATION_ID =
NEGOTIATION.N_NEGOTIATION_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert LINE_NEGOTIATION because NEGOTIATION does not
exist.');
        END
 ;

CREATE TRIGGER tU_LINE_ AFTER UPDATE ON LINE_NEGOTIATION
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM LINE WHERE new.N_LINE_ID = LINE.N_LINE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update LINE_NEGOTIATION because LINE does not exist.');
        END
 ;

CREATE TRIGGER tU_LINE2 AFTER UPDATE ON LINE_NEGOTIATION
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM NEGOTIATION WHERE new.N_NEGOTIATION_ID =
NEGOTIATION.N_NEGOTIATION_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update LINE_NEGOTIATION because NEGOTIATION does not
exist.');
        END
 ;


   

CREATE TABLE LITIGATION
(
        N_LTGTN_ID            CHAR(16) NOT NULL, 
        T_COURT               CHAR(50) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        T_CAPTION             CHAR(150) NOT NULL, 
        C_VENUE               CHAR(5) NOT NULL, 
        D_TRIAL_DT            TIMESTAMP NOT NULL, 
        D_FILING_DT           TIMESTAMP NOT NULL, 
        M_COUNTY              CHAR(30) NOT NULL, 
        C_COUNTRY             CHAR(5) NOT NULL, 
        C_STATE               CHAR(5) NOT NULL, 
        C_LTGTN_DISP          CHAR(5) NOT NULL, 
        C_LTGTN_STAT          CHAR(5) NOT NULL, 
        C_LTGTN_TYP           CHAR(5) NOT NULL, 
        C_DEFENSE_TYP         CHAR(5) NOT NULL, 
        C_LTGTN_ERR_IND       CHAR(1) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        D_ATTRNY_DISC_DT      TIMESTAMP NOT NULL, 
        D_LTGTN_CLOSE_DT      TIMESTAMP NOT NULL, 
        N_DOCKET_NBR          CHAR(20) NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        D_TO_ATTRNY_DT        TIMESTAMP NOT NULL, 
        C_PRINCIPAL_IND       CHAR(1) NOT NULL, 
        D_SUBPOENA_DT         TIMESTAMP NOT NULL
);



CREATE UNIQUE INDEX XTP30501 ON LITIGATION
(
        N_LTGTN_ID            ASC
);



CREATE UNIQUE INDEX XTP30502 ON LITIGATION
(
        N_CLAIM_ID            ASC, 
        N_LTGTN_ID            ASC
)
         CLUSTER;



CREATE UNIQUE INDEX XTP30503 ON LITIGATION
(
        N_LTGTN_ID            ASC, 
        C_LTGTN_STAT          ASC, 
        C_RCD_DEL             ASC
);



ALTER TABLE LITIGATION
ADD CONSTRAINT XTP30501  PRIMARY KEY (N_LTGTN_ID);



ALTER TABLE LITIGATION
ADD CONSTRAINT RTP22217  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



ALTER TABLE ATTRNY_LTGTN
ADD CONSTRAINT RTP30501  FOREIGN KEY (N_LTGTN_ID)
                REFERENCES LITIGATION  (N_LTGTN_ID)
                ON DELETE RESTRICT;



ALTER TABLE LINE_LITIGATION
ADD CONSTRAINT RTP30502  FOREIGN KEY (N_LTGTN_ID)
                REFERENCES LITIGATION  (N_LTGTN_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_LITIG AFTER INSERT ON LITIGATION
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM CLAIM WHERE new.N_CLAIM_ID = CLAIM.N_CLAIM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert LITIGATION because CLAIM does not exist.');
        END
 ;

CREATE TRIGGER tD_LITIG AFTER DELETE ON LITIGATION
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LINE_LITIGATION WHERE LINE_LITIGATION.N_LTGTN_ID =
old.N_LTGTN_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LITIGATION because LINE_LITIGATION exists.');
        END
 ;

CREATE TRIGGER tD_LITI2 AFTER DELETE ON LITIGATION
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ATTRNY_LTGTN WHERE ATTRNY_LTGTN.N_LTGTN_ID = old.N_LTGTN_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LITIGATION because ATTRNY_LTGTN exists.');
        END
 ;

CREATE TRIGGER tU_LITIG AFTER UPDATE ON LITIGATION
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM LITIGATION WHERE new.N_LTGTN_ID <> old.N_LTGTN_ID)) AND
     (0 < (SELECT count(*) FROM LINE_LITIGATION WHERE LINE_LITIGATION.N_LTGTN_ID =
old.N_LTGTN_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update LITIGATION because LINE_LITIGATION exists.');
        END
 ;

CREATE TRIGGER tU_LITI2 AFTER UPDATE ON LITIGATION
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM LITIGATION WHERE new.N_LTGTN_ID <> old.N_LTGTN_ID)) AND
     (0 < (SELECT count(*) FROM ATTRNY_LTGTN WHERE ATTRNY_LTGTN.N_LTGTN_ID = old.N_LTGTN_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update LITIGATION because ATTRNY_LTGTN exists.');
        END
 ;

CREATE TRIGGER tU_LITI3 AFTER UPDATE ON LITIGATION
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM CLAIM WHERE new.N_CLAIM_ID = CLAIM.N_CLAIM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update LITIGATION because CLAIM does not exist.');
        END
 ;


   

CREATE TABLE LOCATION
(
        N_LOC_ID              CHAR(16) NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        T_STREET              CHAR(32) NOT NULL, 
        T_ADDTL_ADDR_LINE     CHAR(9) NOT NULL, 
        N_PO_BOX              CHAR(8) NOT NULL, 
        M_COUNTY              CHAR(20) NOT NULL, 
        M_LOC_CITY            CHAR(32) NOT NULL, 
        C_LOC_STATE           CHAR(5) NOT NULL, 
        C_LOC_ZIP             CHAR(9) NOT NULL, 
        C_LOC_COUNTRY         CHAR(5) NOT NULL, 
        N_LOC_SUITE           CHAR(8) NOT NULL, 
        M_FLOOR               CHAR(12) NOT NULL, 
        M_BUILDING            CHAR(45) NOT NULL, 
        N_BUILDING            CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP30701 ON LOCATION
(
        N_LOC_ID              ASC
);



ALTER TABLE LOCATION
ADD CONSTRAINT XTP30701  PRIMARY KEY (N_LOC_ID);



ALTER TABLE LOCATION
ADD CONSTRAINT RTP31303  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



   

CREATE TABLE LOG_SETTLE_REPORT
(
        N_LOG_STTLE_REP_ID    CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        N_CLAIM_NUMBER        CHAR(9) NOT NULL, 
        C_CLAIM_CLOSED_IND    CHAR(1) NOT NULL, 
        C_LITRA               CHAR(2) NOT NULL, 
        D_LOSS_DATE           TIMESTAMP NOT NULL, 
        N_INS_CUSTOMER_NBR    CHAR(7) NOT NULL, 
        N_BRANDKASSE_ID       CHAR(2) NOT NULL, 
        A_PERIOD_BKNET_AMT    DECIMAL(19, 6) NOT NULL, 
        C_PERIOD_BKNET_UOM    CHAR(5) NOT NULL, 
        D_FIN_TX_UPTD_TS      TIMESTAMP NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP62401 ON LOG_SETTLE_REPORT
(
        N_LOG_STTLE_REP_ID    ASC
);



ALTER TABLE LOG_SETTLE_REPORT
ADD CONSTRAINT XTP62401  PRIMARY KEY (N_LOG_STTLE_REP_ID);



ALTER TABLE LOG_SETTLE_REPORT
ADD CONSTRAINT RTP30031  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_LOG_S AFTER INSERT ON LOG_SETTLE_REPORT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE LOG_SETTLE_REPORT
      SET
        LOG_SETTLE_REPORT.N_LINE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM LINE
            WHERE
              new.N_LINE_ID = LINE.N_LINE_ID
        )
 ;


   

CREATE TABLE LOG_SHARING_REPORT
(
        N_LOG_SHRNG_REP_ID    CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        T_CAUSE_OF_LOSS_SV    CHAR(40) NOT NULL, 
        N_CLAIM_NUMBER        CHAR(9) NOT NULL, 
        T_CLAIM_STATUS_SV     CHAR(40) NOT NULL, 
        D_LOSS_DATE           TIMESTAMP NOT NULL, 
        T_LOSS_TYPE_SV        CHAR(40) NOT NULL, 
        T_LOSS_DESCRIPTION    VARCHAR(400) NOT NULL, 
        N_INS_CUSTOMER_NBR    CHAR(7) NOT NULL, 
        N_BK_CUSTOMER_NBR     CHAR(7) NOT NULL, 
        N_BRANDKASSE_ID       CHAR(2) NOT NULL, 
        A_BRANDKASSE_PCT      DECIMAL(5, 2) NOT NULL, 
        C_LITRA               CHAR(2) NOT NULL, 
        A_PERIOD_NET_AMT      DECIMAL(19, 6) NOT NULL, 
        A_PERIOD_BKNET_AMT    DECIMAL(19, 6) NOT NULL, 
        A_TODATE_NET_AMT      DECIMAL(19, 6) NOT NULL, 
        A_TODATE_BKNET_AMT    DECIMAL(19, 6) NOT NULL, 
        C_NET_UOM             CHAR(5) NOT NULL, 
        A_ESTIMATE_AMT        DECIMAL(19, 6) NOT NULL, 
        C_ESTIMATE_UOM        CHAR(5) NOT NULL, 
        T_ASSESSOR_NAME       CHAR(32) NOT NULL, 
        N_LAST_USER_ID        CHAR(20) NOT NULL, 
        N_LAST_MAN_DEPT_ID    CHAR(4) NOT NULL, 
        T_LAST_MAN_NAME       CHAR(65) NOT NULL, 
        N_LAST_MAN_PHONE      CHAR(8) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP62501 ON LOG_SHARING_REPORT
(
        N_LOG_SHRNG_REP_ID    ASC
);



ALTER TABLE LOG_SHARING_REPORT
ADD CONSTRAINT XTP62501  PRIMARY KEY (N_LOG_SHRNG_REP_ID);



ALTER TABLE LOG_SHARING_REPORT
ADD CONSTRAINT RTP30032  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_LOG_S AFTER INSERT ON LOG_SHARING_REPORT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE LOG_SHARING_REPORT
      SET
        LOG_SHARING_REPORT.N_LINE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM LINE
            WHERE
              new.N_LINE_ID = LINE.N_LINE_ID
        )
 ;


   

CREATE TABLE LOG_TAXREPORT
(
        N_LOG_TAXREPORT_ID    CHAR(16) NOT NULL, 
        SSYSTEM               CHAR(5) NOT NULL, 
        SCHECKPAYMENTID       CHAR(12) NOT NULL, 
        DPAYDATE              TIMESTAMP NOT NULL, 
        SCLIENTID             CHAR(7) NOT NULL, 
        SAMOUNT               DECIMAL(19, 6) NOT NULL, 
        SPAYMENTTYPE          CHAR(32) NOT NULL, 
        SDEPARTMENTID         CHAR(3) NOT NULL, 
        SORGANIZATIONCODE     CHAR(5) NOT NULL, 
        SATAX                 DECIMAL(19, 6) NOT NULL, 
        STIMESTAMP            TIMESTAMP NOT NULL, 
        STRANSACTIONID        CHAR(16) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP62601 ON LOG_TAXREPORT
(
        N_LOG_TAXREPORT_ID    ASC
);



ALTER TABLE LOG_TAXREPORT
ADD CONSTRAINT XTP62601  PRIMARY KEY (N_LOG_TAXREPORT_ID);



   

CREATE TABLE LOSS
(
        N_LOSS_ID             CHAR(16) NOT NULL, 
        N_INS_INVL_ID         CHAR(16) NOT NULL, 
        D_DATE                TIMESTAMP NOT NULL, 
        D_TIME                TIMESTAMP NOT NULL, 
        D_REPORTED            TIMESTAMP NOT NULL, 
        M_CITY_NAME           CHAR(32) NOT NULL, 
        M_STREET_NAME         CHAR(32) NOT NULL, 
        C_POSTAL_CODE         CHAR(9) NOT NULL, 
        T_DESC                VARCHAR(400) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        T_LOC_DESC            VARCHAR(254) NOT NULL, 
        C_FNOL_CAUSE_LOSS     CHAR(5) NOT NULL, 
        C_LOSS_TYPE           CHAR(5) NOT NULL, 
        C_LOB_CAUSE_LOSS      CHAR(5) NOT NULL, 
        C_EXC_UMBRELLA_IND    CHAR(1) NOT NULL, 
        D_RPTD_TO_INSUROR     TIMESTAMP NOT NULL, 
        C_NOTIF_MODE          CHAR(5) NOT NULL, 
        M_STREET_NO           CHAR(9) NOT NULL, 
        M_FLOOR               CHAR(12) NOT NULL, 
        M_SUB_CITY_NAME       CHAR(32) NOT NULL, 
        M_FGN_ADR             CHAR(32) NOT NULL, 
        M_FGN_SUB_ADR         CHAR(32) NOT NULL, 
        M_FGN_CITY_ZIP        CHAR(32) NOT NULL, 
        C_KRAK_GEO_CODE_X     DECIMAL(19, 6), 
        C_KRAK_GEO_CODE_Y     DECIMAL(19, 6), 
        C_POLICE_REP_REQST    CHAR(5) NOT NULL, 
        M_RPT_BY_NAME_DESC    CHAR(30) NOT NULL, 
        C_SUB_LOSS_TYPE       CHAR(5) NOT NULL, 
        C_POLICE_CONTACTED    CHAR(5) NOT NULL, 
        C_COUNTRY_KT          CHAR(3) NOT NULL, 
        C_LOC_TYPE            CHAR(5) NOT NULL, 
        C_INS_VERSION_REC     CHAR(1) NOT NULL, 
        C_DOL_TOO_OLD_IND     CHAR(1) NOT NULL DEFAULT 'N', 
        C_RULE_OUT_INS_VER    CHAR(5) NOT NULL DEFAULT '', 
        C_DOL_APPROXIM_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_ACCIDENT_TYPE       CHAR(5) NOT NULL DEFAULT '', 
        C_WITNESS_IND         CHAR(5) NOT NULL DEFAULT '', 
        C_MEANS_TRANSPORT     CHAR(5) NOT NULL DEFAULT '', 
        C_COUNTR_SHIP_FROM    CHAR(5) NOT NULL DEFAULT '', 
        C_COUNTRY_SHIP_TO     CHAR(5) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP30801 ON LOSS
(
        N_LOSS_ID             ASC
)
         CLUSTER;



CREATE UNIQUE INDEX XTP30802 ON LOSS
(
        N_LOSS_ID             ASC, 
        D_DATE                DESC, 
        D_REPORTED            DESC, 
        C_RCD_DEL             ASC
);



CREATE UNIQUE INDEX XTP30805 ON LOSS
(
        C_LOSS_TYPE           ASC, 
        C_POSTAL_CODE         ASC, 
        N_LOSS_ID             ASC
);



CREATE INDEX XTP30806 ON LOSS
(
        C_POSTAL_CODE         ASC, 
        C_LOSS_TYPE           ASC, 
        C_KRAK_GEO_CODE_X     ASC, 
        C_KRAK_GEO_CODE_Y     ASC, 
        D_CREATE_TS           ASC
);



CREATE INDEX XTP30808 ON LOSS
(
        C_LOSS_TYPE           ASC, 
        C_RCD_DEL             ASC, 
        D_CREATE_TS           ASC
);



CREATE INDEX XTP30809 ON LOSS
(
        C_RCD_DEL             ASC, 
        D_CREATE_TS           ASC, 
        N_LOSS_ID             ASC, 
        C_LOSS_TYPE           ASC, 
        C_SUB_LOSS_TYPE       ASC
);



CREATE INDEX XTP30810 ON LOSS
(
        N_LOSS_ID             ASC, 
        D_DATE                ASC
);



ALTER TABLE LOSS
ADD CONSTRAINT XTP30801  PRIMARY KEY (N_LOSS_ID);



ALTER TABLE LOSS
ADD CONSTRAINT RTP28407  FOREIGN KEY (N_LOSS_ID)
                REFERENCES INSURANCE_ENTITY  (N_ENTITY_ID)
                ON DELETE RESTRICT;



ALTER TABLE LOSS
ADD CONSTRAINT RTP28308  FOREIGN KEY (N_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE POLICE_REPORT
ADD CONSTRAINT RTP30803  FOREIGN KEY (N_LOSS_ID)
                REFERENCES LOSS  (N_LOSS_ID)
                ON DELETE RESTRICT;



ALTER TABLE WC_LOSS
ADD CONSTRAINT RTP30802  FOREIGN KEY (N_WC_LOSS_ID)
                REFERENCES LOSS  (N_LOSS_ID)
                ON DELETE RESTRICT;



ALTER TABLE CLAIM
ADD CONSTRAINT RTP30801  FOREIGN KEY (N_LOSS_ID)
                REFERENCES LOSS  (N_LOSS_ID)
                ON DELETE RESTRICT;



ALTER TABLE SUP_LOSS_TRAVEL
ADD CONSTRAINT RTP30804  FOREIGN KEY (N_SUP_LOSS_TRVL_ID)
                REFERENCES LOSS  (N_LOSS_ID)
                ON DELETE RESTRICT;



ALTER TABLE SUB_LOSS_TRANSPORT
ADD CONSTRAINT RTP30805  FOREIGN KEY (N_LOSS_ID)
                REFERENCES LOSS  (N_LOSS_ID)
                ON DELETE RESTRICT;



ALTER TABLE SUB_LOSS_INJURY_TP
ADD CONSTRAINT RTP30806  FOREIGN KEY (N_LOSS_ID)
                REFERENCES LOSS  (N_LOSS_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_LOSS AFTER INSERT ON LOSS
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE LOSS
      SET
        LOSS.N_INS_INVL_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INS_INVOLVEMENT
            WHERE
              new.N_INS_INVL_ID = INS_INVOLVEMENT.N_INS_INVL_ID
        )
 ;

CREATE TRIGGER tD_LOSS AFTER DELETE ON LOSS
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM SUB_LOSS_INJURY_TP WHERE SUB_LOSS_INJURY_TP.N_LOSS_ID =
old.N_LOSS_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LOSS because SUB_LOSS_INJURY_TP exists.');
        END
 ;

CREATE TRIGGER tD_LOSS2 AFTER DELETE ON LOSS
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM SUB_LOSS_TRANSPORT WHERE SUB_LOSS_TRANSPORT.N_LOSS_ID =
old.N_LOSS_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LOSS because SUB_LOSS_TRANSPORT exists.');
        END
 ;

CREATE TRIGGER tD_LOSS3 AFTER DELETE ON LOSS
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM SUP_LOSS_TRAVEL WHERE SUP_LOSS_TRAVEL.N_SUP_LOSS_TRVL_ID =
old.N_LOSS_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LOSS because SUP_LOSS_TRAVEL exists.');
        END
 ;

CREATE TRIGGER tD_LOSS4 AFTER DELETE ON LOSS
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CLAIM WHERE CLAIM.N_LOSS_ID = old.N_LOSS_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LOSS because CLAIM exists.');
        END
 ;

CREATE TRIGGER tD_LOSS5 AFTER DELETE ON LOSS
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM WC_LOSS WHERE WC_LOSS.N_WC_LOSS_ID = old.N_LOSS_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LOSS because WC_LOSS exists.');
        END
 ;

CREATE TRIGGER tD_LOSS6 AFTER DELETE ON LOSS
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM POLICE_REPORT WHERE POLICE_REPORT.N_LOSS_ID = old.N_LOSS_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LOSS because POLICE_REPORT exists.');
        END
 ;

CREATE TRIGGER tU_LOSS AFTER UPDATE ON LOSS
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM LOSS WHERE new.N_LOSS_ID <> old.N_LOSS_ID)) AND
     (0 < (SELECT count(*) FROM WC_LOSS WHERE WC_LOSS.N_WC_LOSS_ID = old.N_LOSS_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update LOSS because WC_LOSS exists.');
        END
 ;


   

CREATE TABLE LOSS_OF_EARNINGS
(
        N_LOSS_OF_EARN_ID     CHAR(16) NOT NULL DEFAULT '', 
        D_DATE_OF_ONSET       TIMESTAMP DEFAULT NULL, 
        D_END_DT              TIMESTAMP DEFAULT NULL, 
        C_WORK_UNIT           CHAR(5) NOT NULL DEFAULT '', 
        A_WAGE_AMT            DECIMAL(19, 6) DEFAULT NULL, 
        C_WAGE_UOM            CHAR(5) NOT NULL DEFAULT '', 
        A_OTHER_WAGES         DECIMAL(19, 6) DEFAULT NULL, 
        C_OTHER_WAGES_UOM     CHAR(5) NOT NULL DEFAULT '', 
        F_HOLIDAY_ALLO_PCT    DECIMAL(5, 4) DEFAULT NULL, 
        F_SH_ALLOWANCE_PCT    DECIMAL(5, 4) DEFAULT NULL, 
        F_WORK_PENSION_PCT    DECIMAL(5, 4) DEFAULT NULL, 
        A_WORK_PENSION_AMT    DECIMAL(19, 6) DEFAULT NULL, 
        C_WORK_PENSION_UOM    CHAR(5) NOT NULL DEFAULT '', 
        A_BONUS_AMT           DECIMAL(19, 6) DEFAULT NULL, 
        C_BONUS_UOM           CHAR(5) NOT NULL DEFAULT '', 
        Q_HOLIDAY_DEDUCT      DECIMAL(3) DEFAULT NULL, 
        A_SIK_LEAV_DED_AMT    DECIMAL(19, 6) DEFAULT NULL, 
        C_SIK_LEAV_DED_UOM    CHAR(5) NOT NULL DEFAULT '', 
        F_SIKL_H_ALLOW_PCT    DECIMAL(5, 4) DEFAULT NULL, 
        F_SL_SH_ALLOW_PCT     DECIMAL(5, 4) DEFAULT NULL, 
        F_SIKL_PENSION_PCT    DECIMAL(5, 4) DEFAULT NULL, 
        A_SICK_BEN_DED_AMT    DECIMAL(19, 6) DEFAULT NULL, 
        C_SICK_BEN_DED_UOM    CHAR(5) NOT NULL DEFAULT '', 
        A_OTHER_DED_AMT       DECIMAL(19, 6) DEFAULT NULL, 
        C_OTHER_DED_UOM       CHAR(5) NOT NULL DEFAULT '', 
        A_TOTAL_WAGE          DECIMAL(19, 6) DEFAULT NULL, 
        C_TOTAL_WAGE_UOM      CHAR(5) NOT NULL DEFAULT '', 
        A_HOLIDAY_ALL_AMT     DECIMAL(19, 6) DEFAULT NULL, 
        C_HOLIDY_ALLOW_UOM    CHAR(5) NOT NULL DEFAULT '', 
        A_SH_ALLOW_AMT        DECIMAL(19, 6) DEFAULT NULL, 
        C_SH_ALLOW_UOM        CHAR(5) NOT NULL DEFAULT '', 
        A_CALC_PENSION_AMT    DECIMAL(19, 6) DEFAULT NULL, 
        C_CALC_PENSION_UOM    CHAR(5) NOT NULL DEFAULT '', 
        C_HOLIDAY_TYPE        CHAR(5) NOT NULL DEFAULT '', 
        C_SH_TYPE             CHAR(5) NOT NULL DEFAULT '', 
        C_PENSION_TYPE        CHAR(5) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0, 
        A_TOT_SL_DED_AMT      DECIMAL(19, 6) DEFAULT NULL, 
        C_TOT_SL_DED_UOM      CHAR(5) NOT NULL DEFAULT '', 
        Q_WORK_UNIT_PER_PD    DECIMAL(11, 6) DEFAULT NULL, 
        A_TOTAL_SALARY        DECIMAL(19, 6) DEFAULT NULL, 
        C_TOTAL_SALARY_UOM    CHAR(5) NOT NULL DEFAULT '', 
        N_COMP_WORK_UNITS     INTEGER NOT NULL DEFAULT 0, 
        N_COMP_TOT_PERIOD     INTEGER NOT NULL DEFAULT 0
);



CREATE UNIQUE INDEX XTP46001 ON LOSS_OF_EARNINGS
(
        N_LOSS_OF_EARN_ID     ASC
)
         CLUSTER;



ALTER TABLE LOSS_OF_EARNINGS
ADD CONSTRAINT XTP46001  PRIMARY KEY (N_LOSS_OF_EARN_ID);



ALTER TABLE LOSS_OF_EARNINGS
ADD CONSTRAINT RTP45303  FOREIGN KEY (N_LOSS_OF_EARN_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_LOSS_ AFTER INSERT ON LOSS_OF_EARNINGS
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INJURY_COMP WHERE new.N_LOSS_OF_EARN_ID =
INJURY_COMP.N_INJURY_COMP_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert LOSS_OF_EARNINGS because INJURY_COMP does not
exist.');
        END
 ;


   

CREATE TABLE LOSS_OF_PROVIDER
(
        N_LOSS_OF_PROVD_ID    CHAR(16) NOT NULL DEFAULT '', 
        C_SURVIVING_REL       CHAR(5) NOT NULL DEFAULT '', 
        C_ANNUAL_SALARY       CHAR(5) NOT NULL DEFAULT '', 
        C_ANN_SALARY_UOM      CHAR(5) NOT NULL DEFAULT '', 
        T_CPR_NR              CHAR(11) DEFAULT NULL, 
        C_SOLE_PROV_IND       CHAR(1) DEFAULT NULL, 
        N_INVL_ROLE_ID        CHAR(16), 
        A_ACT_ANN_SALARY      DECIMAL(19, 6) DEFAULT NULL, 
        C_ACT_ANN_SAL_UOM     CHAR(5) NOT NULL DEFAULT '', 
        A_CAP_COMP_AMT        DEC(19, 6) DEFAULT NULL, 
        C_CAP_COMP_UOM        CHAR(5) NOT NULL DEFAULT '', 
        A_RECCUR_BEN_AMT      DECIMAL(19, 6) DEFAULT NULL, 
        C_RECCUR_BEN_UOM      CHAR(5) NOT NULL DEFAULT '', 
        C_RAISE_PCT           CHAR(5) NOT NULL DEFAULT '', 
        D_CALC_DT             TIMESTAMP DEFAULT NULL, 
        A_ADJ_ANN_SALARY      DECIMAL(19, 6) DEFAULT NULL, 
        C_ADJ_ANN_SAL_UOM     CHAR(5) NOT NULL DEFAULT '', 
        A_EET_AMT             DECIMAL(19, 6) DEFAULT NULL, 
        C_EET_UOM             CHAR(5) NOT NULL DEFAULT '', 
        Q_NBR_MONTHS          DECIMAL(3) DEFAULT NULL, 
        A_RAISE_AMT           DECIMAL(19, 6) DEFAULT NULL, 
        C_RAISE_UOM           CHAR(5) NOT NULL DEFAULT '', 
        A_SOLE_PROV_AMT       DECIMAL(19, 6) DEFAULT NULL, 
        C_SOLE_PROV_UOM       CHAR(5) NOT NULL DEFAULT '', 
        A_ADJUSTED_AMT        DECIMAL(19, 6) DEFAULT NULL, 
        C_ADJUSTED_UOM        CHAR(5) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0, 
        A_TOTAL_INCOME        DECIMAL(19, 6) DEFAULT NULL, 
        C_TOTAL_INCOME_UOM    CHAR(5) NOT NULL DEFAULT '', 
        D_DATE_ON_EIGHTEEN    TIMESTAMP DEFAULT NULL
);



CREATE UNIQUE INDEX XTP46101 ON LOSS_OF_PROVIDER
(
        N_LOSS_OF_PROVD_ID    ASC
)
         CLUSTER;



ALTER TABLE LOSS_OF_PROVIDER
ADD CONSTRAINT XTP46101  PRIMARY KEY (N_LOSS_OF_PROVD_ID);



ALTER TABLE LOSS_OF_PROVIDER
ADD CONSTRAINT RTP45305  FOREIGN KEY (N_LOSS_OF_PROVD_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



ALTER TABLE LOSS_OF_PROVIDER
ADD CONSTRAINT RTP29810  FOREIGN KEY (N_INVL_ROLE_ID)
                REFERENCES INVOLVEMENT_ROLE  (N_INVL_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE SUPP_LOSS_OF_PR_AT
ADD CONSTRAINT RTP46101  FOREIGN KEY (N_SUPP_LOP_AT_ID)
                REFERENCES LOSS_OF_PROVIDER  (N_LOSS_OF_PROVD_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_LOSS_ AFTER INSERT ON LOSS_OF_PROVIDER
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE LOSS_OF_PROVIDER
      SET
        LOSS_OF_PROVIDER.N_INVL_ROLE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INVOLVEMENT_ROLE
            WHERE
              new.N_INVL_ROLE_ID = INVOLVEMENT_ROLE.N_INVL_ROLE_ID
        )
 ;

CREATE TRIGGER tI_LOSS2 AFTER INSERT ON LOSS_OF_PROVIDER
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INJURY_COMP WHERE new.N_LOSS_OF_PROVD_ID =
INJURY_COMP.N_INJURY_COMP_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert LOSS_OF_PROVIDER because INJURY_COMP does not
exist.');
        END
 ;

CREATE TRIGGER tD_LOSS_ AFTER DELETE ON LOSS_OF_PROVIDER
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM SUPP_LOSS_OF_PR_AT WHERE SUPP_LOSS_OF_PR_AT.N_SUPP_LOP_AT_ID =
old.N_LOSS_OF_PROVD_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete LOSS_OF_PROVIDER because SUPP_LOSS_OF_PR_AT exists.');

        END
 ;


   

CREATE TABLE MATCHED_CHAR
(
        N_MTCHDCHARS_ID       CHAR(16) NOT NULL, 
        N_PATTERN_TRANS_ID    CHAR(16) NOT NULL, 
        N_CHAR_ID             CHAR(16) NOT NULL, 
        C_CHAR_LVL_CD         CHAR(5) NOT NULL, 
        N_PARENT_ENTITY_ID    CHAR(16) NOT NULL, 
        N_ENTITY_ID           CHAR(16) NOT NULL
);



CREATE UNIQUE INDEX XTP50401 ON MATCHED_CHAR
(
        N_MTCHDCHARS_ID       ASC
);



ALTER TABLE MATCHED_CHAR
ADD CONSTRAINT XTP50401  PRIMARY KEY (N_MTCHDCHARS_ID);



ALTER TABLE MATCHED_CHAR
ADD CONSTRAINT RTP51001  FOREIGN KEY (N_PATTERN_TRANS_ID)
                REFERENCES PTN_ANALYSIS_TRANS  (N_PATTERN_TRANS_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_MATCH AFTER INSERT ON MATCHED_CHAR
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE MATCHED_CHAR
      SET
        MATCHED_CHAR.N_PATTERN_TRANS_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM PTN_ANALYSIS_TRANS
            WHERE
              new.N_PATTERN_TRANS_ID = PTN_ANALYSIS_TRANS.N_PATTERN_TRANS_ID
        )
 ;


   

CREATE TABLE MATCHED_COLCTV
(
        N_MTCHDCOLCTVS_ID     CHAR(16) NOT NULL, 
        N_PATTERN_TRANS_ID    CHAR(16) NOT NULL, 
        N_COLLECTIVE_ID       CHAR(16) NOT NULL, 
        C_COLCTV_LVL_CD       CHAR(5) NOT NULL, 
        N_PARENT_ENTITY_ID    CHAR(16) NOT NULL, 
        N_ENTITY_ID           CHAR(16) NOT NULL
);



CREATE UNIQUE INDEX XTP50501 ON MATCHED_COLCTV
(
        N_MTCHDCOLCTVS_ID     ASC
);



ALTER TABLE MATCHED_COLCTV
ADD CONSTRAINT XTP50501  PRIMARY KEY (N_MTCHDCOLCTVS_ID);



ALTER TABLE MATCHED_COLCTV
ADD CONSTRAINT RTP51002  FOREIGN KEY (N_PATTERN_TRANS_ID)
                REFERENCES PTN_ANALYSIS_TRANS  (N_PATTERN_TRANS_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_MATCH AFTER INSERT ON MATCHED_COLCTV
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE MATCHED_COLCTV
      SET
        MATCHED_COLCTV.N_PATTERN_TRANS_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM PTN_ANALYSIS_TRANS
            WHERE
              new.N_PATTERN_TRANS_ID = PTN_ANALYSIS_TRANS.N_PATTERN_TRANS_ID
        )
 ;


   

CREATE TABLE MATCHED_PATTERN
(
        N_MTCHDPATTERNS_ID    CHAR(16) NOT NULL, 
        N_PATTERN_TRANS_ID    CHAR(16) NOT NULL, 
        N_PATTERN_ID          CHAR(16) NOT NULL, 
        C_PATTERN_LVL_CD      CHAR(5) NOT NULL, 
        N_PARENT_ENTITY_ID    CHAR(16) NOT NULL, 
        N_ENTITY_ID           CHAR(16) NOT NULL
);



CREATE UNIQUE INDEX XTP50601 ON MATCHED_PATTERN
(
        N_MTCHDPATTERNS_ID    ASC
);



ALTER TABLE MATCHED_PATTERN
ADD CONSTRAINT XTP50601  PRIMARY KEY (N_MTCHDPATTERNS_ID);



ALTER TABLE MATCHED_PATTERN
ADD CONSTRAINT RTP51003  FOREIGN KEY (N_PATTERN_TRANS_ID)
                REFERENCES PTN_ANALYSIS_TRANS  (N_PATTERN_TRANS_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_MATCH AFTER INSERT ON MATCHED_PATTERN
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE MATCHED_PATTERN
      SET
        MATCHED_PATTERN.N_PATTERN_TRANS_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM PTN_ANALYSIS_TRANS
            WHERE
              new.N_PATTERN_TRANS_ID = PTN_ANALYSIS_TRANS.N_PATTERN_TRANS_ID
        )
 ;


   

CREATE TABLE MOTOR
(
        N_MOTOR_ID            CHAR(16) NOT NULL DEFAULT '', 
        N_ITEM_ID             CHAR(16) NOT NULL DEFAULT '', 
        T_MOTOR_NO            CHAR(30) NOT NULL DEFAULT '', 
        T_MOTOR_BRAND         CHAR(30) NOT NULL DEFAULT '', 
        C_MOTOR_TYPE_KT       CHAR(5) NOT NULL DEFAULT '', 
        T_MODEL_YEAR          CHAR(4) NOT NULL DEFAULT '', 
        Q_HORSE_POWER         DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_FUEL_TYPE_KT        CHAR(5) NOT NULL DEFAULT '', 
        A_INSURANCE_SUM       DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_INS_SUM_UOM         CHAR(5) NOT NULL DEFAULT '', 
        D_START_CHANGE_DT     TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        D_INSURANCE_END_DT    TIMESTAMP NOT NULL DEFAULT '2999-12-31-00.00.00.000000', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0
);



CREATE UNIQUE INDEX XTP39201 ON MOTOR
(
        N_MOTOR_ID            ASC, 
        N_ITEM_ID             ASC
)
         CLUSTER;



ALTER TABLE MOTOR
ADD CONSTRAINT XTP39201  PRIMARY KEY (N_MOTOR_ID, N_ITEM_ID);



ALTER TABLE MOTOR
ADD CONSTRAINT RTP29117  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_MOTOR AFTER INSERT ON MOTOR
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert MOTOR because ITEM does not exist.');
        END
 ;


   

CREATE TABLE NAME_ADDRESS
(
        N_NAME_ADDRESS_ID     CHAR(16) NOT NULL, 
        M_NAME                VARCHAR(70) NOT NULL DEFAULT '', 
        M_STREET_INFO         VARCHAR(70) NOT NULL DEFAULT '', 
        C_POSTAL_CODE         CHAR(9) NOT NULL DEFAULT '', 
        M_CITY_NAME           VARCHAR(35) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0, 
        T_CVR_CPR             CHAR(12) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP34301 ON NAME_ADDRESS
(
        N_NAME_ADDRESS_ID     ASC
)
         CLUSTER;



ALTER TABLE NAME_ADDRESS
ADD CONSTRAINT XTP34301  PRIMARY KEY (N_NAME_ADDRESS_ID);



ALTER TABLE RECOURSE_MESSAGE
ADD CONSTRAINT RTP34302  FOREIGN KEY (N_TDK_NAME_ADDR_ID)
                REFERENCES NAME_ADDRESS  (N_NAME_ADDRESS_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tD_NAME_ AFTER DELETE ON NAME_ADDRESS
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECOURSE_MESSAGE WHERE RECOURSE_MESSAGE.N_TDK_NAME_ADDR_ID =
old.N_NAME_ADDRESS_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete NAME_ADDRESS because RECOURSE_MESSAGE exists.');
        END
 ;

CREATE TRIGGER tD_NAME2 AFTER DELETE ON NAME_ADDRESS
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECOURSE_MESSAGE WHERE RECOURSE_MESSAGE.N_OPP_NAME_ADDR_ID =
old.N_NAME_ADDRESS_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete NAME_ADDRESS because RECOURSE_MESSAGE exists.');
        END
 ;


   

CREATE TABLE NEGOTIATION
(
        N_NEGOTIATION_ID      CHAR(16) NOT NULL, 
        C_STLMT_FORM_CODE     CHAR(5) NOT NULL, 
        Q_FINAL_STLMT_VAL     DECIMAL(19, 6), 
        C_FINAL_STLMT_UOM     CHAR(5) NOT NULL, 
        C_NEGOTIATION_TYPE    CHAR(5) NOT NULL, 
        C_NEGOTIATION_MODE    CHAR(5) NOT NULL, 
        C_NEGOTIATION_FORM    CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_FINAL_STLMT_DATE    TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        T_STLMT_DESC          CHAR(254) NOT NULL
);



CREATE UNIQUE INDEX XTP30901 ON NEGOTIATION
(
        N_NEGOTIATION_ID      ASC
);



CREATE INDEX XTP30902 ON NEGOTIATION
(
        C_NEGOTIATION_TYPE    ASC
);



ALTER TABLE NEGOTIATION
ADD CONSTRAINT XTP30901  PRIMARY KEY (N_NEGOTIATION_ID);



ALTER TABLE LINE_NEGOTIATION
ADD CONSTRAINT RTP30902  FOREIGN KEY (N_NEGOTIATION_ID)
                REFERENCES NEGOTIATION  (N_NEGOTIATION_ID)
                ON DELETE RESTRICT;



ALTER TABLE STRENGTH_ASSERTION
ADD CONSTRAINT RTP30906  FOREIGN KEY (N_NEGOTIATION_ID)
                REFERENCES NEGOTIATION  (N_NEGOTIATION_ID)
                ON DELETE RESTRICT;



ALTER TABLE SETTLEMENT_RANGE
ADD CONSTRAINT RTP30905  FOREIGN KEY (N_NEGOTIATION_ID)
                REFERENCES NEGOTIATION  (N_NEGOTIATION_ID)
                ON DELETE RESTRICT;



ALTER TABLE NEGOTIATION_ASSN
ADD CONSTRAINT RTP30903  FOREIGN KEY (N_NEGOTIATION_ID)
                REFERENCES NEGOTIATION  (N_NEGOTIATION_ID)
                ON DELETE RESTRICT;



ALTER TABLE DEMAND_OFFER
ADD CONSTRAINT RTP30901  FOREIGN KEY (N_NEGOTIATION_ID)
                REFERENCES NEGOTIATION  (N_NEGOTIATION_ID)
                ON DELETE RESTRICT;



ALTER TABLE RCOVRY_NEGOTIATION
ADD CONSTRAINT RTP30904  FOREIGN KEY (N_NEGOTIATION_ID)
                REFERENCES NEGOTIATION  (N_NEGOTIATION_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tD_NEGOT AFTER DELETE ON NEGOTIATION
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RCOVRY_NEGOTIATION WHERE RCOVRY_NEGOTIATION.N_NEGOTIATION_ID =
old.N_NEGOTIATION_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete NEGOTIATION because RCOVRY_NEGOTIATION exists.');
        END
 ;

CREATE TRIGGER tD_NEGO2 AFTER DELETE ON NEGOTIATION
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM DEMAND_OFFER WHERE DEMAND_OFFER.N_NEGOTIATION_ID =
old.N_NEGOTIATION_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete NEGOTIATION because DEMAND_OFFER exists.');
        END
 ;

CREATE TRIGGER tD_NEGO3 AFTER DELETE ON NEGOTIATION
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM NEGOTIATION_ASSN WHERE NEGOTIATION_ASSN.N_NEGOTIATION_ID =
old.N_NEGOTIATION_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete NEGOTIATION because NEGOTIATION_ASSN exists.');
        END
 ;

CREATE TRIGGER tD_NEGO4 AFTER DELETE ON NEGOTIATION
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM SETTLEMENT_RANGE WHERE SETTLEMENT_RANGE.N_NEGOTIATION_ID =
old.N_NEGOTIATION_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete NEGOTIATION because SETTLEMENT_RANGE exists.');
        END
 ;

CREATE TRIGGER tD_NEGO5 AFTER DELETE ON NEGOTIATION
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM STRENGTH_ASSERTION WHERE STRENGTH_ASSERTION.N_NEGOTIATION_ID =
old.N_NEGOTIATION_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete NEGOTIATION because STRENGTH_ASSERTION exists.');
        END
 ;

CREATE TRIGGER tD_NEGO6 AFTER DELETE ON NEGOTIATION
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LINE_NEGOTIATION WHERE LINE_NEGOTIATION.N_NEGOTIATION_ID =
old.N_NEGOTIATION_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete NEGOTIATION because LINE_NEGOTIATION exists.');
        END
 ;

CREATE TRIGGER tU_NEGOT AFTER UPDATE ON NEGOTIATION
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM NEGOTIATION WHERE new.N_NEGOTIATION_ID <>
old.N_NEGOTIATION_ID)) AND
     (0 < (SELECT count(*) FROM RCOVRY_NEGOTIATION WHERE RCOVRY_NEGOTIATION.N_NEGOTIATION_ID =
old.N_NEGOTIATION_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update NEGOTIATION because RCOVRY_NEGOTIATION exists.');
        END
 ;

CREATE TRIGGER tU_NEGO2 AFTER UPDATE ON NEGOTIATION
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM NEGOTIATION WHERE new.N_NEGOTIATION_ID <>
old.N_NEGOTIATION_ID)) AND
     (0 < (SELECT count(*) FROM NEGOTIATION_ASSN WHERE NEGOTIATION_ASSN.N_NEGOTIATION_ID =
old.N_NEGOTIATION_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update NEGOTIATION because NEGOTIATION_ASSN exists.');
        END
 ;

CREATE TRIGGER tU_NEGO3 AFTER UPDATE ON NEGOTIATION
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM NEGOTIATION WHERE new.N_NEGOTIATION_ID <>
old.N_NEGOTIATION_ID)) AND
     (0 < (SELECT count(*) FROM LINE_NEGOTIATION WHERE LINE_NEGOTIATION.N_NEGOTIATION_ID =
old.N_NEGOTIATION_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update NEGOTIATION because LINE_NEGOTIATION exists.');
        END
 ;


   

CREATE TABLE NEGOTIATION_ASSN
(
        N_NEG_ASSN_ID         CHAR(16) NOT NULL, 
        N_NEGOTIATION_ID      CHAR(16) NOT NULL, 
        N_INS_INVL_ID         CHAR(16) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP31001 ON NEGOTIATION_ASSN
(
        N_NEG_ASSN_ID         ASC
)
         CLUSTER;



CREATE INDEX XTP31002 ON NEGOTIATION_ASSN
(
        N_INS_INVL_ID         ASC, 
        N_NEGOTIATION_ID      ASC
);



ALTER TABLE NEGOTIATION_ASSN
ADD CONSTRAINT XTP31001  PRIMARY KEY (N_NEG_ASSN_ID);



ALTER TABLE NEGOTIATION_ASSN
ADD CONSTRAINT RTP30903  FOREIGN KEY (N_NEGOTIATION_ID)
                REFERENCES NEGOTIATION  (N_NEGOTIATION_ID)
                ON DELETE RESTRICT;



ALTER TABLE NEGOTIATION_ASSN
ADD CONSTRAINT RTP28309  FOREIGN KEY (N_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_NEGOT AFTER INSERT ON NEGOTIATION_ASSN
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INS_INVOLVEMENT WHERE new.N_INS_INVL_ID =
INS_INVOLVEMENT.N_INS_INVL_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert NEGOTIATION_ASSN because INS_INVOLVEMENT does not
exist.');
        END
 ;

CREATE TRIGGER tI_NEGO2 AFTER INSERT ON NEGOTIATION_ASSN
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM NEGOTIATION WHERE new.N_NEGOTIATION_ID =
NEGOTIATION.N_NEGOTIATION_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert NEGOTIATION_ASSN because NEGOTIATION does not
exist.');
        END
 ;

CREATE TRIGGER tU_NEGOT AFTER UPDATE ON NEGOTIATION_ASSN
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM INS_INVOLVEMENT WHERE new.N_INS_INVL_ID =
INS_INVOLVEMENT.N_INS_INVL_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update NEGOTIATION_ASSN because INS_INVOLVEMENT does not
exist.');
        END
 ;

CREATE TRIGGER tU_NEGO2 AFTER UPDATE ON NEGOTIATION_ASSN
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM NEGOTIATION WHERE new.N_NEGOTIATION_ID =
NEGOTIATION.N_NEGOTIATION_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update NEGOTIATION_ASSN because NEGOTIATION does not
exist.');
        END
 ;


   

CREATE TABLE NEXT_SEQ_NBR
(
        C_SEQ_TYP             CHAR(5) NOT NULL, 
        N_SEQ_START_NBR       INTEGER NOT NULL, 
        N_SEQ_END_NBR         INTEGER NOT NULL, 
        N_SEQ_INCREMENT       INTEGER NOT NULL, 
        N_LST_ISS_SEQ_NBR     INTEGER NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP31101 ON NEXT_SEQ_NBR
(
        C_SEQ_TYP             ASC
);



ALTER TABLE NEXT_SEQ_NBR
ADD CONSTRAINT XTP31101  PRIMARY KEY (C_SEQ_TYP);



   

CREATE TABLE ORG_ENTITY
(
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        N_USER_ID             CHAR(20) NOT NULL, 
        N_TYPE_ID             CHAR(16) NOT NULL, 
        N_ORG_REFN            CHAR(30) NOT NULL, 
        D_ORG_ACTIVE          TIMESTAMP NOT NULL, 
        D_ORG_DEACTIVE        TIMESTAMP NOT NULL, 
        C_JOB_CODE            CHAR(5) NOT NULL, 
        C_PERFORMER_IND       CHAR(1) NOT NULL, 
        M_CORPORATE_UC        VARCHAR(70) NOT NULL, 
        M_CORPORATE           VARCHAR(70) NOT NULL, 
        N_ASSIGN_THRESHLD     DECIMAL(19, 6), 
        C_DEPT_CODE           CHAR(3) NOT NULL, 
        C_LANGUAGE            CHAR(5) NOT NULL, 
        N_ASSESSOR_NUMBER     CHAR(7) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP31301 ON ORG_ENTITY
(
        N_ORG_ENTY_ID         ASC
)
         CLUSTER;



CREATE INDEX XTP31302 ON ORG_ENTITY
(
        N_USER_ID             ASC, 
        D_ORG_ACTIVE          ASC
);



CREATE INDEX XTP31305 ON ORG_ENTITY
(
        C_JOB_CODE            ASC, 
        C_PERFORMER_IND       ASC
);



CREATE INDEX XTP31308 ON ORG_ENTITY
(
        N_ORG_ENTY_ID         ASC, 
        C_RCD_DEL             ASC, 
        C_JOB_CODE            ASC
);



CREATE INDEX XTP31310 ON ORG_ENTITY
(
        N_ORG_ENTY_ID         ASC, 
        N_USER_ID             ASC, 
        C_DEPT_CODE           ASC, 
        M_CORPORATE           ASC, 
        N_TYPE_ID             ASC
);



CREATE INDEX XTP31311 ON ORG_ENTITY
(
        N_ORG_ENTY_ID         ASC, 
        N_USER_ID             ASC, 
        N_TYPE_ID             ASC, 
        M_CORPORATE           ASC, 
        C_DEPT_CODE           ASC
);



CREATE INDEX XTP31312 ON ORG_ENTITY
(
        N_ORG_ENTY_ID         ASC, 
        N_TYPE_ID             ASC
);



ALTER TABLE ORG_ENTITY
ADD CONSTRAINT XTP31301  PRIMARY KEY (N_ORG_ENTY_ID);



ALTER TABLE EVENT_HISTORY
ADD CONSTRAINT RTP31319  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE PERFORMER
ADD CONSTRAINT RTP31324  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE ORG_ENTITY_RELSHP
ADD CONSTRAINT RTP31322  FOREIGN KEY (N_ORG_ENTY_ID1)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE ORG_ENTITY_RELSHP
ADD CONSTRAINT RTP31323  FOREIGN KEY (N_ORG_ENTY_ID2)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE LOCATION
ADD CONSTRAINT RTP31303  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE PHONE
ADD CONSTRAINT RTP31304  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE PERSONAL_PROFILE
ADD CONSTRAINT RTP31325  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE ENVELOPE
ADD CONSTRAINT RTP31306  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE ASSIGNMENT
ADD CONSTRAINT RTP31327  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECURRING_PAYMENT
ADD CONSTRAINT RTP31326  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE SET NULL;



ALTER TABLE AVAILABILITY
ADD CONSTRAINT RTP31318  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE ASSIGNMENT_RULES
ADD CONSTRAINT RTP31317  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE ASSIGNMENT_PATTERN
ADD CONSTRAINT RTP31316  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE FILE_NOTE
ADD CONSTRAINT RTP31320  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE E_MAIL
ADD CONSTRAINT RTP31302  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE ALERTS
ADD CONSTRAINT RTP31315  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE CLIENT_ALERT
ADD CONSTRAINT RTP31301  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE CCS_TASK
ADD CONSTRAINT RTP31307  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE CLAIM
ADD CONSTRAINT RTP31308  FOREIGN KEY (N_PHYS_FILE_OFC)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE EVENT
ADD CONSTRAINT RTP31309  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE FINANCIAL_TX_GRP
ADD CONSTRAINT RTP31311  FOREIGN KEY (N_CREATE_UID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE FINANCIAL_ENTITY
ADD CONSTRAINT RTP31310  FOREIGN KEY (N_RGN_ORG_ENTY)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE LINE
ADD CONSTRAINT RTP31312  FOREIGN KEY (N_MANL_MOD_OE_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECEIPT
ADD CONSTRAINT RTP31313  FOREIGN KEY (N_PRFMR_ORG_ENTY)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE REQUEST_SNAPSHOT
ADD CONSTRAINT RTP31314  FOREIGN KEY (N_REQ_LAST_MOD)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE ASSIGNMENT_COUNT
ADD CONSTRAINT RTP31305  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE USER_PREFERENCE
ADD CONSTRAINT RTP31338  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE CLAIM
ADD CONSTRAINT RTP31340  FOREIGN KEY (N_ENTERED_BY)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE INJ_COMP_REC_PYMNT
ADD CONSTRAINT R_483  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECEIPT_GROUP
ADD CONSTRAINT RTP31339  FOREIGN KEY (N_CREATED_BY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tD_ORG_E AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECEIPT_GROUP WHERE RECEIPT_GROUP.N_CREATED_BY_ID =
old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because RECEIPT_GROUP exists.');
        END
 ;

CREATE TRIGGER tD_ORG_2 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INJ_COMP_REC_PYMNT WHERE INJ_COMP_REC_PYMNT.N_ORG_ENTY_ID =
old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because INJ_COMP_REC_PYMNT exists.');
        END
 ;

CREATE TRIGGER tD_ORG_3 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CLAIM WHERE CLAIM.N_ENTERED_BY = old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because CLAIM exists.');
        END
 ;

CREATE TRIGGER tD_ORG_4 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM USER_PREFERENCE WHERE USER_PREFERENCE.N_ORG_ENTY_ID =
old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because USER_PREFERENCE exists.');
        END
 ;

CREATE TRIGGER tD_ORG_5 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECEIPT_GROUP WHERE RECEIPT_GROUP.N_SUBMITTED_BY_ID =
old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because RECEIPT_GROUP exists.');
        END
 ;

CREATE TRIGGER tD_ORG_6 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ASSIGNMENT_COUNT WHERE ASSIGNMENT_COUNT.N_ORG_ENTY_ID =
old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because ASSIGNMENT_COUNT exists.');
        END
 ;

CREATE TRIGGER tD_ORG_7 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM REQUEST_SNAPSHOT WHERE REQUEST_SNAPSHOT.N_REQ_LAST_MOD =
old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because REQUEST_SNAPSHOT exists.');
        END
 ;

CREATE TRIGGER tD_ORG_8 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECEIPT WHERE RECEIPT.N_PRFMR_ORG_ENTY = old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because RECEIPT exists.');
        END
 ;

CREATE TRIGGER tD_ORG_9 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LINE WHERE LINE.N_MANL_MOD_OE_ID = old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because LINE exists.');
        END
 ;

CREATE TRIGGER tD_ORG10 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM FINANCIAL_ENTITY WHERE FINANCIAL_ENTITY.N_RGN_ORG_ENTY =
old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because FINANCIAL_ENTITY exists.');
        END
 ;

CREATE TRIGGER tD_ORG11 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM FINANCIAL_TX_GRP WHERE FINANCIAL_TX_GRP.N_CREATE_UID =
old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because FINANCIAL_TX_GRP exists.');
        END
 ;

CREATE TRIGGER tD_ORG12 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM EVENT WHERE EVENT.N_ORG_ENTY_ID = old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because EVENT exists.');
        END
 ;

CREATE TRIGGER tD_ORG13 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CLAIM WHERE CLAIM.N_PHYS_FILE_OFC = old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because CLAIM exists.');
        END
 ;

CREATE TRIGGER tD_ORG14 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CCS_TASK WHERE CCS_TASK.N_ORG_ENTY_ID = old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because CCS_TASK exists.');
        END
 ;

CREATE TRIGGER tD_ORG15 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CLIENT_ALERT WHERE CLIENT_ALERT.N_ORG_ENTY_ID =
old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because CLIENT_ALERT exists.');
        END
 ;

CREATE TRIGGER tD_ORG16 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ALERTS WHERE ALERTS.N_ORG_ENTY_ID = old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because ALERTS exists.');
        END
 ;

CREATE TRIGGER tD_ORG17 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM E_MAIL WHERE E_MAIL.N_ORG_ENTY_ID = old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because E_MAIL exists.');
        END
 ;

CREATE TRIGGER tD_ORG18 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM FILE_NOTE WHERE FILE_NOTE.N_ORG_ENTY_ID = old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because FILE_NOTE exists.');
        END
 ;

CREATE TRIGGER tD_ORG19 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ASSIGNMENT_PATTERN WHERE ASSIGNMENT_PATTERN.N_ORG_ENTY_ID =
old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because ASSIGNMENT_PATTERN exists.');
        END
 ;

CREATE TRIGGER tD_ORG20 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ASSIGNMENT_RULES WHERE ASSIGNMENT_RULES.N_ORG_ENTY_ID =
old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because ASSIGNMENT_RULES exists.');
        END
 ;

CREATE TRIGGER tD_ORG21 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM AVAILABILITY WHERE AVAILABILITY.N_ORG_ENTY_ID =
old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because AVAILABILITY exists.');
        END
 ;

CREATE TRIGGER tD_ORG22 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
    UPDATE RECURRING_PAYMENT
      SET
        RECURRING_PAYMENT.N_ORG_ENTY_ID = NULL
      WHERE
        RECURRING_PAYMENT.N_ORG_ENTY_ID = old.N_ORG_ENTY_ID
 ;

CREATE TRIGGER tD_ORG23 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ASSIGNMENT WHERE ASSIGNMENT.N_ORG_ENTY_ID = old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because ASSIGNMENT exists.');
        END
 ;

CREATE TRIGGER tD_ORG24 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM FINANCIAL_ENTITY WHERE FINANCIAL_ENTITY.N_RGN_ORG_ENTY =
old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because FINANCIAL_ENTITY exists.');
        END
 ;

CREATE TRIGGER tD_ORG25 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ENVELOPE WHERE ENVELOPE.N_ORG_ENTY_ID = old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because ENVELOPE exists.');
        END
 ;

CREATE TRIGGER tD_ORG26 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PERSONAL_PROFILE WHERE PERSONAL_PROFILE.N_ORG_ENTY_ID =
old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because PERSONAL_PROFILE exists.');
        END
 ;

CREATE TRIGGER tD_ORG27 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PHONE WHERE PHONE.N_ORG_ENTY_ID = old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because PHONE exists.');
        END
 ;

CREATE TRIGGER tD_ORG28 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM LOCATION WHERE LOCATION.N_ORG_ENTY_ID = old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because LOCATION exists.');
        END
 ;

CREATE TRIGGER tD_ORG29 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ORG_ENTITY_RELSHP WHERE ORG_ENTITY_RELSHP.N_ORG_ENTY_ID2 =
old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because ORG_ENTITY_RELSHP exists.');
        END
 ;

CREATE TRIGGER tD_ORG30 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ORG_ENTITY_RELSHP WHERE ORG_ENTITY_RELSHP.N_ORG_ENTY_ID1 =
old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because ORG_ENTITY_RELSHP exists.');
        END
 ;

CREATE TRIGGER tD_ORG31 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PERFORMER WHERE PERFORMER.N_ORG_ENTY_ID = old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because PERFORMER exists.');
        END
 ;

CREATE TRIGGER tD_ORG32 AFTER DELETE ON ORG_ENTITY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM EVENT_HISTORY WHERE EVENT_HISTORY.N_ORG_ENTY_ID =
old.N_ORG_ENTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete ORG_ENTITY because EVENT_HISTORY exists.');
        END
 ;

CREATE TRIGGER tU_ORG_E AFTER UPDATE ON ORG_ENTITY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM ORG_ENTITY WHERE new.N_ORG_ENTY_ID <> old.N_ORG_ENTY_ID)) AND
     (0 < (SELECT count(*) FROM CLIENT_ALERT WHERE CLIENT_ALERT.N_ORG_ENTY_ID =
old.N_ORG_ENTY_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ORG_ENTITY because CLIENT_ALERT exists.');
        END
 ;

CREATE TRIGGER tU_ORG_2 AFTER UPDATE ON ORG_ENTITY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM ORG_ENTITY WHERE new.N_ORG_ENTY_ID <> old.N_ORG_ENTY_ID)) AND
     (0 < (SELECT count(*) FROM ALERTS WHERE ALERTS.N_ORG_ENTY_ID = old.N_ORG_ENTY_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ORG_ENTITY because ALERTS exists.');
        END
 ;

CREATE TRIGGER tU_ORG_3 AFTER UPDATE ON ORG_ENTITY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM ORG_ENTITY WHERE new.N_ORG_ENTY_ID <> old.N_ORG_ENTY_ID)) AND
     (0 < (SELECT count(*) FROM ASSIGNMENT_PATTERN WHERE ASSIGNMENT_PATTERN.N_ORG_ENTY_ID =
old.N_ORG_ENTY_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ORG_ENTITY because ASSIGNMENT_PATTERN exists.');
        END
 ;

CREATE TRIGGER tU_ORG_4 AFTER UPDATE ON ORG_ENTITY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM ORG_ENTITY WHERE new.N_ORG_ENTY_ID <> old.N_ORG_ENTY_ID)) AND
     (0 < (SELECT count(*) FROM ASSIGNMENT_RULES WHERE ASSIGNMENT_RULES.N_ORG_ENTY_ID =
old.N_ORG_ENTY_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ORG_ENTITY because ASSIGNMENT_RULES exists.');
        END
 ;

CREATE TRIGGER tU_ORG_5 AFTER UPDATE ON ORG_ENTITY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM ORG_ENTITY WHERE new.N_ORG_ENTY_ID <> old.N_ORG_ENTY_ID)) AND
     (0 < (SELECT count(*) FROM AVAILABILITY WHERE AVAILABILITY.N_ORG_ENTY_ID =
old.N_ORG_ENTY_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ORG_ENTITY because AVAILABILITY exists.');
        END
 ;

CREATE TRIGGER tU_ORG_6 AFTER UPDATE ON ORG_ENTITY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ORG_ENTITY WHERE new.N_ORG_ENTY_ID <> old.N_ORG_ENTY_ID))
     UPDATE RECURRING_PAYMENT
       SET
         RECURRING_PAYMENT.N_ORG_ENTY_ID = NULL
       WHERE
         RECURRING_PAYMENT.N_ORG_ENTY_ID = old.N_ORG_ENTY_ID
 ;

CREATE TRIGGER tU_ORG_7 AFTER UPDATE ON ORG_ENTITY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM ORG_ENTITY WHERE new.N_ORG_ENTY_ID <> old.N_ORG_ENTY_ID)) AND
     (0 < (SELECT count(*) FROM ORG_ENTITY_RELSHP WHERE ORG_ENTITY_RELSHP.N_ORG_ENTY_ID2 =
old.N_ORG_ENTY_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ORG_ENTITY because ORG_ENTITY_RELSHP exists.');
        END
 ;

CREATE TRIGGER tU_ORG_8 AFTER UPDATE ON ORG_ENTITY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM ORG_ENTITY WHERE new.N_ORG_ENTY_ID <> old.N_ORG_ENTY_ID)) AND
     (0 < (SELECT count(*) FROM ORG_ENTITY_RELSHP WHERE ORG_ENTITY_RELSHP.N_ORG_ENTY_ID1 =
old.N_ORG_ENTY_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ORG_ENTITY because ORG_ENTITY_RELSHP exists.');
        END
 ;


   

CREATE TABLE ORG_ENTITY_RELSHP
(
        N_ENTY_RELSHP_ID      CHAR(16) NOT NULL, 
        N_ORG_ENTY_ID1        CHAR(16) NOT NULL, 
        N_ORG_ENTY_ID2        CHAR(16) NOT NULL, 
        C_ORG_ROLE            CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP31401 ON ORG_ENTITY_RELSHP
(
        N_ENTY_RELSHP_ID      ASC
)
         CLUSTER;



CREATE INDEX XTP31402 ON ORG_ENTITY_RELSHP
(
        N_ORG_ENTY_ID2        ASC, 
        N_ORG_ENTY_ID1        ASC, 
        C_ORG_ROLE            ASC
);



CREATE INDEX XTP31403 ON ORG_ENTITY_RELSHP
(
        C_ORG_ROLE            ASC, 
        N_ORG_ENTY_ID1        ASC, 
        N_ORG_ENTY_ID2        ASC
);



CREATE INDEX XTP31406 ON ORG_ENTITY_RELSHP
(
        N_ORG_ENTY_ID1        ASC, 
        C_RCD_DEL             ASC, 
        N_ORG_ENTY_ID2        ASC
);



ALTER TABLE ORG_ENTITY_RELSHP
ADD CONSTRAINT XTP31401  PRIMARY KEY (N_ENTY_RELSHP_ID);



ALTER TABLE ORG_ENTITY_RELSHP
ADD CONSTRAINT RTP31322  FOREIGN KEY (N_ORG_ENTY_ID1)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE ORG_ENTITY_RELSHP
ADD CONSTRAINT RTP31323  FOREIGN KEY (N_ORG_ENTY_ID2)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_ORG_E AFTER INSERT ON ORG_ENTITY_RELSHP
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ORG_ENTITY WHERE new.N_ORG_ENTY_ID2 =
ORG_ENTITY.N_ORG_ENTY_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert ORG_ENTITY_RELSHP because ORG_ENTITY does not
exist.');
        END
 ;

CREATE TRIGGER tI_ORG_2 AFTER INSERT ON ORG_ENTITY_RELSHP
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ORG_ENTITY WHERE new.N_ORG_ENTY_ID1 =
ORG_ENTITY.N_ORG_ENTY_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert ORG_ENTITY_RELSHP because ORG_ENTITY does not
exist.');
        END
 ;

CREATE TRIGGER tU_ORG_E AFTER UPDATE ON ORG_ENTITY_RELSHP
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM ORG_ENTITY WHERE new.N_ORG_ENTY_ID2 =
ORG_ENTITY.N_ORG_ENTY_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ORG_ENTITY_RELSHP because ORG_ENTITY does not
exist.');
        END
 ;

CREATE TRIGGER tU_ORG_2 AFTER UPDATE ON ORG_ENTITY_RELSHP
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM ORG_ENTITY WHERE new.N_ORG_ENTY_ID1 =
ORG_ENTITY.N_ORG_ENTY_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update ORG_ENTITY_RELSHP because ORG_ENTITY does not
exist.');
        END
 ;


   

CREATE TABLE OTHER_INSURANCE
(
        N_OTH_INSURANCE_ID    CHAR(16) NOT NULL DEFAULT '', 
        N_LINE_ID             CHAR(16) NOT NULL DEFAULT '', 
        C_OTH_INS_TYPE        CHAR(5) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0
);



CREATE UNIQUE INDEX XTP31201 ON OTHER_INSURANCE
(
        N_OTH_INSURANCE_ID    ASC
);



ALTER TABLE OTHER_INSURANCE
ADD CONSTRAINT XTP31201  PRIMARY KEY (N_OTH_INSURANCE_ID);



ALTER TABLE OTHER_INSURANCE
ADD CONSTRAINT RTP30035  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_OTHER AFTER INSERT ON OTHER_INSURANCE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM LINE WHERE new.N_LINE_ID = LINE.N_LINE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert OTHER_INSURANCE because LINE does not exist.');
        END
 ;


   

CREATE TABLE OUT_INVOICE
(
        N_OUT_INVOICE_ID      CHAR(16) NOT NULL, 
        N_OUT_INVOICE_NBR     CHAR(12) NOT NULL, 
        D_ORIG_DUE_DATE       TIMESTAMP, 
        D_ACTUAL_DUE_DATE     TIMESTAMP, 
        D_NEXT_RMNDR_DATE     TIMESTAMP, 
        N_RMNDR_NBR           CHAR(1), 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        C_INV_METHOD          CHAR(5) NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        C_RETURN_TO_CH_IND    CHAR(1) NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        C_MULT_PAYORS_IND     CHAR(1) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        T_COMMENTS            CHAR(254) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        C_WRITE_OFF_RSN       CHAR(5) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        A_BALANCE_DUE         DECIMAL(19, 6), 
        C_PAYMENT_LETTER      CHAR(5) NOT NULL, 
        T_REVERSE_INV_RSN     VARCHAR(35) NOT NULL, 
        C_REVERSE_IND         CHAR(1) NOT NULL, 
        C_BATCH_IND           CHAR(1) NOT NULL DEFAULT 'N', 
        T_REFERENCE           VARCHAR(50) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP44701 ON OUT_INVOICE
(
        N_OUT_INVOICE_ID      ASC
)
         CLUSTER;



CREATE UNIQUE INDEX XTP44704 ON OUT_INVOICE
(
        N_OUT_INVOICE_NBR     ASC
);



CREATE INDEX XTP44703 ON OUT_INVOICE
(
        N_OUT_INVOICE_NBR     ASC, 
        N_OUT_INVOICE_ID      ASC
);



CREATE INDEX XTP44705 ON OUT_INVOICE
(
        D_NEXT_RMNDR_DATE     DESC, 
        C_REVERSE_IND         ASC
);



CREATE INDEX XTP44706 ON OUT_INVOICE
(
        C_BATCH_IND           ASC, 
        N_OUT_INVOICE_ID      ASC
);



CREATE INDEX XTP44707 ON OUT_INVOICE
(
        N_OUT_INVOICE_ID      ASC, 
        C_REVERSE_IND         ASC, 
        A_BALANCE_DUE         ASC
);



ALTER TABLE OUT_INVOICE
ADD CONSTRAINT XTP44701  PRIMARY KEY (N_OUT_INVOICE_ID);



ALTER TABLE OUT_INVOICE
ADD CONSTRAINT RTP27408  FOREIGN KEY (N_OUT_INVOICE_ID)
                REFERENCES FINANCIAL_ENTITY  (N_FIN_ENT_ID)
                ON DELETE RESTRICT;



ALTER TABLE OUT_INVOICE_PAYOR
ADD CONSTRAINT RTP44704  FOREIGN KEY (N_OUT_INVOICE_ID)
                REFERENCES OUT_INVOICE  (N_OUT_INVOICE_ID)
                ON DELETE RESTRICT;



ALTER TABLE OUT_INVOICE_DTL
ADD CONSTRAINT RTP44703  FOREIGN KEY (N_OUT_INVOICE_ID)
                REFERENCES OUT_INVOICE  (N_OUT_INVOICE_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECEIPT
ADD CONSTRAINT RTP44702  FOREIGN KEY (N_OUT_INVOICE_ID)
                REFERENCES OUT_INVOICE  (N_OUT_INVOICE_ID)
                ON DELETE RESTRICT;



ALTER TABLE PAYMENT
ADD CONSTRAINT RTP44701  FOREIGN KEY (N_INT_PAY_O_INV_ID)
                REFERENCES OUT_INVOICE  (N_OUT_INVOICE_ID)
                ON DELETE RESTRICT;



ALTER TABLE PRORATA_CALC
ADD CONSTRAINT RTP44705  FOREIGN KEY (N_OUT_INVOICE_ID)
                REFERENCES OUT_INVOICE  (N_OUT_INVOICE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_OUT_I AFTER INSERT ON OUT_INVOICE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM FINANCIAL_ENTITY WHERE new.N_OUT_INVOICE_ID =
FINANCIAL_ENTITY.N_FIN_ENT_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert OUT_INVOICE because FINANCIAL_ENTITY does not
exist.');
        END
 ;

CREATE TRIGGER tD_OUT_I AFTER DELETE ON OUT_INVOICE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PRORATA_CALC WHERE PRORATA_CALC.N_OUT_INVOICE_ID =
old.N_OUT_INVOICE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete OUT_INVOICE because PRORATA_CALC exists.');
        END
 ;

CREATE TRIGGER tD_OUT_2 AFTER DELETE ON OUT_INVOICE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PAYMENT WHERE PAYMENT.N_INT_PAY_O_INV_ID =
old.N_OUT_INVOICE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete OUT_INVOICE because PAYMENT exists.');
        END
 ;

CREATE TRIGGER tD_OUT_3 AFTER DELETE ON OUT_INVOICE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECEIPT WHERE RECEIPT.N_OUT_INVOICE_ID = old.N_OUT_INVOICE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete OUT_INVOICE because RECEIPT exists.');
        END
 ;

CREATE TRIGGER tD_OUT_4 AFTER DELETE ON OUT_INVOICE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM OUT_INVOICE_DTL WHERE OUT_INVOICE_DTL.N_OUT_INVOICE_ID =
old.N_OUT_INVOICE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete OUT_INVOICE because OUT_INVOICE_DTL exists.');
        END
 ;

CREATE TRIGGER tD_OUT_5 AFTER DELETE ON OUT_INVOICE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM OUT_INVOICE_PAYOR WHERE OUT_INVOICE_PAYOR.N_OUT_INVOICE_ID =
old.N_OUT_INVOICE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete OUT_INVOICE because OUT_INVOICE_PAYOR exists.');
        END
 ;


   

CREATE TABLE OUT_INVOICE_DTL
(
        N_OUT_INV_DTL_ID      CHAR(16) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        C_FIN_CTGY            CHAR(5) NOT NULL, 
        C_SERVICE             CHAR(5) NOT NULL, 
        A_INV_DTL_AMT         DECIMAL(19, 6), 
        A_INV_DTL_UOM         CHAR(5) NOT NULL, 
        T_COMMENTS            CHAR(254) NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL DEFAULT x'05', 
        N_OUT_INVOICE_ID      CHAR(16) NOT NULL DEFAULT x'05', 
        A_BALANCE_DUE         DECIMAL(19, 6) NOT NULL, 
        A_BALANCE_DUE_UOM     CHAR(5) NOT NULL, 
        N_RECOURSE_MESS_ID    CHAR(16) NOT NULL DEFAULT x'05', 
        N_INJURY_COMP_ID      CHAR(16) DEFAULT x'05', 
        N_ITEM_ID             CHAR(16) DEFAULT x'05', 
        C_COST_IND            CHAR(1) NOT NULL DEFAULT 'N'
);



CREATE UNIQUE INDEX XTP44801 ON OUT_INVOICE_DTL
(
        N_OUT_INV_DTL_ID      ASC
);



CREATE INDEX XTP44807 ON OUT_INVOICE_DTL
(
        N_RECOURSE_MESS_ID    ASC, 
        C_RCD_DEL             ASC
);



CREATE INDEX XTP44808 ON OUT_INVOICE_DTL
(
        N_OUT_INVOICE_ID      ASC, 
        C_RCD_DEL             ASC, 
        N_LINE_ID             ASC
);



CREATE INDEX XTP44809 ON OUT_INVOICE_DTL
(
        N_OUT_INVOICE_ID      ASC, 
        A_INV_DTL_AMT         ASC, 
        A_BALANCE_DUE         ASC, 
        C_RCD_DEL             ASC
);



ALTER TABLE OUT_INVOICE_DTL
ADD CONSTRAINT XTP44801  PRIMARY KEY (N_OUT_INV_DTL_ID);



ALTER TABLE OUT_INVOICE_DTL
ADD CONSTRAINT RTP30030  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE OUT_INVOICE_DTL
ADD CONSTRAINT RTP44703  FOREIGN KEY (N_OUT_INVOICE_ID)
                REFERENCES OUT_INVOICE  (N_OUT_INVOICE_ID)
                ON DELETE RESTRICT;



ALTER TABLE OUT_INVOICE_DTL
ADD CONSTRAINT RTP34003  FOREIGN KEY (N_RECOURSE_MESS_ID)
                REFERENCES RECOURSE_MESSAGE  (N_RECOURSE_MESS_ID)
                ON DELETE RESTRICT;



ALTER TABLE OUT_INVOICE_DTL
ADD CONSTRAINT RTP45309  FOREIGN KEY (N_INJURY_COMP_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



ALTER TABLE OUT_INVOICE_DTL
ADD CONSTRAINT RTP29118  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE PRORATA_CALC_DTL
ADD CONSTRAINT RTP44801  FOREIGN KEY (N_OUT_INV_DTL_ID)
                REFERENCES OUT_INVOICE_DTL  (N_OUT_INV_DTL_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_OUT_I AFTER INSERT ON OUT_INVOICE_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE OUT_INVOICE_DTL
      SET
        OUT_INVOICE_DTL.N_ITEM_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ITEM
            WHERE
              new.N_ITEM_ID = ITEM.N_ITEM_ID
        )
 ;

CREATE TRIGGER tI_OUT_2 AFTER INSERT ON OUT_INVOICE_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE OUT_INVOICE_DTL
      SET
        OUT_INVOICE_DTL.N_INJURY_COMP_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INJURY_COMP
            WHERE
              new.N_INJURY_COMP_ID = INJURY_COMP.N_INJURY_COMP_ID
        )
 ;

CREATE TRIGGER tI_OUT_3 AFTER INSERT ON OUT_INVOICE_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE OUT_INVOICE_DTL
      SET
        OUT_INVOICE_DTL.N_RECOURSE_MESS_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM RECOURSE_MESSAGE
            WHERE
              new.N_RECOURSE_MESS_ID = RECOURSE_MESSAGE.N_RECOURSE_MESS_ID
        )
 ;

CREATE TRIGGER tI_OUT_4 AFTER INSERT ON OUT_INVOICE_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE OUT_INVOICE_DTL
      SET
        OUT_INVOICE_DTL.N_OUT_INVOICE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM OUT_INVOICE
            WHERE
              new.N_OUT_INVOICE_ID = OUT_INVOICE.N_OUT_INVOICE_ID
        )
 ;

CREATE TRIGGER tI_OUT_5 AFTER INSERT ON OUT_INVOICE_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE OUT_INVOICE_DTL
      SET
        OUT_INVOICE_DTL.N_LINE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM LINE
            WHERE
              new.N_LINE_ID = LINE.N_LINE_ID
        )
 ;

CREATE TRIGGER tD_OUT_I AFTER DELETE ON OUT_INVOICE_DTL
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PRORATA_CALC_DTL WHERE PRORATA_CALC_DTL.N_OUT_INV_DTL_ID =
old.N_OUT_INV_DTL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete OUT_INVOICE_DTL because PRORATA_CALC_DTL exists.');
        END
 ;


   

CREATE TABLE OUT_INVOICE_PAYOR
(
        N_OUT_INV_PAYOR_ID    CHAR(16) NOT NULL, 
        N_OUT_INVOICE_ID      CHAR(16) NOT NULL, 
        N_INS_INVL_ID         CHAR(16) NOT NULL, 
        M_STREET_NAME         CHAR(32) NOT NULL, 
        M_STREET_NO           CHAR(9) NOT NULL, 
        M_FLOOR               CHAR(12) NOT NULL, 
        M_SUB_CITY_NAME       CHAR(32) NOT NULL, 
        C_SEND_IND            CHAR(1) NOT NULL, 
        C_POSTAL_CODE         CHAR(9) NOT NULL, 
        M_MAIL_TO_NAME        CHAR(64) NOT NULL, 
        M_CITY_NAME           CHAR(32) NOT NULL, 
        C_COUNTRY             CHAR(5) NOT NULL, 
        M_CONAME              CHAR(32) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_MAILTO_INVL_ID      CHAR(16) NOT NULL DEFAULT '', 
        C_DISABLE_ADDR_IND    CHAR(1) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP44901 ON OUT_INVOICE_PAYOR
(
        N_OUT_INV_PAYOR_ID    ASC
);



CREATE INDEX XTP44904 ON OUT_INVOICE_PAYOR
(
        N_OUT_INVOICE_ID      ASC, 
        N_INS_INVL_ID         ASC, 
        C_RCD_DEL             ASC
);



CREATE INDEX XTP44905 ON OUT_INVOICE_PAYOR
(
        N_MAILTO_INVL_ID      ASC
);



ALTER TABLE OUT_INVOICE_PAYOR
ADD CONSTRAINT XTP44901  PRIMARY KEY (N_OUT_INV_PAYOR_ID);



ALTER TABLE OUT_INVOICE_PAYOR
ADD CONSTRAINT RTP28317  FOREIGN KEY (N_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE OUT_INVOICE_PAYOR
ADD CONSTRAINT RTP44704  FOREIGN KEY (N_OUT_INVOICE_ID)
                REFERENCES OUT_INVOICE  (N_OUT_INVOICE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_OUT_I AFTER INSERT ON OUT_INVOICE_PAYOR
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE OUT_INVOICE_PAYOR
      SET
        OUT_INVOICE_PAYOR.N_INS_INVL_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INS_INVOLVEMENT
            WHERE
              new.N_INS_INVL_ID = INS_INVOLVEMENT.N_INS_INVL_ID
        )
 ;

CREATE TRIGGER tI_OUT_2 AFTER INSERT ON OUT_INVOICE_PAYOR
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE OUT_INVOICE_PAYOR
      SET
        OUT_INVOICE_PAYOR.N_OUT_INVOICE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM OUT_INVOICE
            WHERE
              new.N_OUT_INVOICE_ID = OUT_INVOICE.N_OUT_INVOICE_ID
        )
 ;


   

CREATE TABLE PAYMENT
(
        N_PYMNT_ID            CHAR(16) NOT NULL, 
        N_BHALF_INS_INV_ID    CHAR(16) NOT NULL, 
        D_ISSUE_DT            TIMESTAMP NOT NULL, 
        C_FINAL_PYMNT         CHAR(5) NOT NULL, 
        C_PYMNT_METH          CHAR(5) NOT NULL, 
        C_STOP_VOID           CHAR(5) NOT NULL, 
        C_STOP_VOID_RSN       CHAR(5) NOT NULL, 
        C_PYMNT_TYP           CHAR(5) NOT NULL, 
        C_PYMNT_ATCH_IND      CHAR(1) NOT NULL, 
        N_PAYEE_NAME_ID       CHAR(16) NOT NULL, 
        N_MAILTO_NAME_ID      CHAR(16) NOT NULL, 
        N_PAYEE_INS_INV_ID    CHAR(16) NOT NULL, 
        N_MAIL_INS_INV_ID     CHAR(16) NOT NULL, 
        T_COMMENT             VARCHAR(1000) NOT NULL, 
        N_BNK_ACCT            CHAR(19) NOT NULL, 
        N_BNK_TRN             CHAR(11) NOT NULL, 
        C_GIRO_MTHD           CHAR(5) NOT NULL, 
        N_GIRO_REF_NUM        CHAR(16) NOT NULL, 
        N_GIRO_ACCOUNT_NUM    CHAR(8) NOT NULL, 
        N_INT_PAY_CLM_NUM     CHAR(15) NOT NULL, 
        N_INT_PAY_POL_NUM     CHAR(10) NOT NULL, 
        N_INT_PAY_LINE_ID     CHAR(16) NOT NULL, 
        N_INT_PAY_O_INV_ID    CHAR(16) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        T_SHORT_DESC          CHAR(35) NOT NULL, 
        N_RECURR_PYMNT_ID     CHAR(16) NOT NULL, 
        C_PAYMENT_LETTER      CHAR(5) NOT NULL, 
        C_DISABLE_ADDR_IND    CHAR(1) NOT NULL, 
        N_EFT_REG_NO          CHAR(8) NOT NULL, 
        N_EFT_ACCOUNT_NO      CHAR(16) NOT NULL, 
        N_BHALF_CPR_CVR       CHAR(10) NOT NULL DEFAULT '', 
        C_ACCOUNT_PROTECT     CHAR(1) NOT NULL DEFAULT 'N'
);



CREATE UNIQUE INDEX XTP31801 ON PAYMENT
(
        N_PYMNT_ID            ASC
)
         CLUSTER;



CREATE INDEX XTP31802 ON PAYMENT
(
        N_PAYEE_NAME_ID       ASC, 
        N_PYMNT_ID            ASC
);



CREATE INDEX XTP31803 ON PAYMENT
(
        N_PYMNT_ID            ASC, 
        C_PYMNT_TYP           ASC
);



CREATE INDEX XTP31807 ON PAYMENT
(
        N_PAYEE_INS_INV_ID    ASC
);



CREATE INDEX XTP31808 ON PAYMENT
(
        N_MAIL_INS_INV_ID     ASC
);



CREATE INDEX XTP31806 ON PAYMENT
(
        N_BHALF_INS_INV_ID    ASC
);



ALTER TABLE PAYMENT
ADD CONSTRAINT XTP31801  PRIMARY KEY (N_PYMNT_ID);



ALTER TABLE PAYMENT
ADD CONSTRAINT RTP33801  FOREIGN KEY (N_RECURR_PYMNT_ID)
                REFERENCES RECURRING_PAYMENT  (N_RECURR_PYMNT_ID)
                ON DELETE SET NULL;



ALTER TABLE PAYMENT
ADD CONSTRAINT RTP27405  FOREIGN KEY (N_PYMNT_ID)
                REFERENCES FINANCIAL_ENTITY  (N_FIN_ENT_ID)
                ON DELETE RESTRICT;



ALTER TABLE PAYMENT
ADD CONSTRAINT RTP30010  FOREIGN KEY (N_INT_PAY_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE PAYMENT
ADD CONSTRAINT RTP44701  FOREIGN KEY (N_INT_PAY_O_INV_ID)
                REFERENCES OUT_INVOICE  (N_OUT_INVOICE_ID)
                ON DELETE RESTRICT;



ALTER TABLE PAYMENT_DTL
ADD CONSTRAINT RTP31803  FOREIGN KEY (N_PYMNT_ID)
                REFERENCES PAYMENT  (N_PYMNT_ID)
                ON DELETE RESTRICT;



ALTER TABLE CHECK_PYMNT
ADD CONSTRAINT RTP31802  FOREIGN KEY (N_CHK_PYMNT_ID)
                REFERENCES PAYMENT  (N_PYMNT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_PAYME AFTER INSERT ON PAYMENT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE PAYMENT
      SET
        PAYMENT.N_INT_PAY_LINE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM LINE
            WHERE
              new.N_INT_PAY_LINE_ID = LINE.N_LINE_ID
        )
 ;

CREATE TRIGGER tI_PAYM2 AFTER INSERT ON PAYMENT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE PAYMENT
      SET
        PAYMENT.N_INT_PAY_O_INV_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM OUT_INVOICE
            WHERE
              new.N_INT_PAY_O_INV_ID = OUT_INVOICE.N_OUT_INVOICE_ID
        )
 ;

CREATE TRIGGER tI_PAYM3 AFTER INSERT ON PAYMENT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE PAYMENT
      SET
        PAYMENT.N_RECURR_PYMNT_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM RECURRING_PAYMENT
            WHERE
              new.N_RECURR_PYMNT_ID = RECURRING_PAYMENT.N_RECURR_PYMNT_ID
        )
 ;

CREATE TRIGGER tI_PAYM4 AFTER INSERT ON PAYMENT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM FINANCIAL_ENTITY WHERE new.N_PYMNT_ID =
FINANCIAL_ENTITY.N_FIN_ENT_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert PAYMENT because FINANCIAL_ENTITY does not exist.');
        END
 ;

CREATE TRIGGER tI_PAYM5 AFTER INSERT ON PAYMENT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE PAYMENT
      SET
        PAYMENT.N_BHALF_INS_INV_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INS_INVOLVEMENT
            WHERE
              new.N_BHALF_INS_INV_ID = INS_INVOLVEMENT.N_INS_INVL_ID
        )
 ;

CREATE TRIGGER tD_PAYME AFTER DELETE ON PAYMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CHECK_PYMNT WHERE CHECK_PYMNT.N_CHK_PYMNT_ID = old.N_PYMNT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete PAYMENT because CHECK_PYMNT exists.');
        END
 ;

CREATE TRIGGER tD_PAYM2 AFTER DELETE ON PAYMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PAYMENT_DTL WHERE PAYMENT_DTL.N_PYMNT_ID = old.N_PYMNT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete PAYMENT because PAYMENT_DTL exists.');
        END
 ;

CREATE TRIGGER tU_PAYME AFTER UPDATE ON PAYMENT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM PAYMENT WHERE new.N_PYMNT_ID <> old.N_PYMNT_ID)) AND
     (0 < (SELECT count(*) FROM CHECK_PYMNT WHERE CHECK_PYMNT.N_CHK_PYMNT_ID = old.N_PYMNT_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update PAYMENT because CHECK_PYMNT exists.');
        END
 ;

CREATE TRIGGER tU_PAYM2 AFTER UPDATE ON PAYMENT
     FOR EACH ROW MODE DB2SQL
    UPDATE PAYMENT
      SET
        PAYMENT.N_RECURR_PYMNT_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM RECURRING_PAYMENT
            WHERE
              new.N_RECURR_PYMNT_ID = RECURRING_PAYMENT.N_RECURR_PYMNT_ID
        )
 ;

CREATE TRIGGER tU_PAYM3 AFTER UPDATE ON PAYMENT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM FINANCIAL_ENTITY WHERE new.N_PYMNT_ID =
FINANCIAL_ENTITY.N_FIN_ENT_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update PAYMENT because FINANCIAL_ENTITY does not exist.');
        END
 ;


   

CREATE TABLE PAYMENT_DTL
(
        N_PYMNT_DTL_ID        CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL DEFAULT x'05', 
        N_INC_INV_DTL_ID      CHAR(16) NOT NULL DEFAULT x'05', 
        N_PYMNT_ID            CHAR(16) NOT NULL DEFAULT x'05', 
        N_PYMNT_FREQ          INTEGER, 
        C_FIN_CTGY            CHAR(5) NOT NULL, 
        C_SERVICE             CHAR(5) NOT NULL, 
        D_SRVC_START_DT       TIMESTAMP NOT NULL, 
        D_SRVC_END_DT         TIMESTAMP NOT NULL, 
        A_SRVC_PAID           DECIMAL(19, 6), 
        C_DED_RSN             CHAR(5) NOT NULL, 
        C_1099_RPTBL          CHAR(5) NOT NULL DEFAULT '', 
        A_INTEREST_AMT        DECIMAL(19, 6), 
        C_INT_CALC_IND        CHAR(1) NOT NULL, 
        C_KOSTER_IND          CHAR(1) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_DEDUC_DIFF_ID       CHAR(16) DEFAULT x'05', 
        N_INJURY_COMP_ID      CHAR(16) DEFAULT x'05', 
        C_TAX_REPORTABLE      CHAR(5) NOT NULL DEFAULT '', 
        N_RECOURSE_MESS_ID    CHAR(16) NOT NULL DEFAULT x'05', 
        C_COST_IND            CHAR(1) NOT NULL DEFAULT 'N', 
        N_AUTOTAKS_REP_ID     CHAR(16) NOT NULL DEFAULT x'05'
);



CREATE UNIQUE INDEX XTP31901 ON PAYMENT_DTL
(
        N_PYMNT_DTL_ID        ASC
)
         CLUSTER;



CREATE INDEX XTP31902 ON PAYMENT_DTL
(
        N_PYMNT_ID            ASC, 
        N_LINE_ID             ASC, 
        C_RCD_DEL             ASC
);



ALTER TABLE PAYMENT_DTL
ADD CONSTRAINT XTP31901  PRIMARY KEY (N_PYMNT_DTL_ID);



ALTER TABLE PAYMENT_DTL
ADD CONSTRAINT RTP31803  FOREIGN KEY (N_PYMNT_ID)
                REFERENCES PAYMENT  (N_PYMNT_ID)
                ON DELETE RESTRICT;



ALTER TABLE PAYMENT_DTL
ADD CONSTRAINT RTP30020  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE PAYMENT_DTL
ADD CONSTRAINT RTP41003  FOREIGN KEY (N_INC_INV_DTL_ID)
                REFERENCES INC_INVOICE_DTL  (N_INC_INV_DTL_ID)
                ON DELETE RESTRICT;



ALTER TABLE PAYMENT_DTL
ADD CONSTRAINT RTP30201  FOREIGN KEY (N_DEDUC_DIFF_ID)
                REFERENCES DEDUC_DIFFERENCE  (N_DEDUC_DIFF_ID)
                ON DELETE RESTRICT;



ALTER TABLE PAYMENT_DTL
ADD CONSTRAINT RTP45308  FOREIGN KEY (N_INJURY_COMP_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



ALTER TABLE PAYMENT_DTL
ADD CONSTRAINT RTP34002  FOREIGN KEY (N_RECOURSE_MESS_ID)
                REFERENCES RECOURSE_MESSAGE  (N_RECOURSE_MESS_ID)
                ON DELETE RESTRICT;



ALTER TABLE PAYMENT_DTL
ADD CONSTRAINT RTP37901  FOREIGN KEY (N_AUTOTAKS_REP_ID)
                REFERENCES AUTOTAKS_REPORT  (N_AUTOTAKS_REP_ID)
                ON DELETE RESTRICT;



ALTER TABLE ITEM_PAYMNT_XREF
ADD CONSTRAINT RTP31902  FOREIGN KEY (N_PYMNT_DTL_ID)
                REFERENCES PAYMENT_DTL  (N_PYMNT_DTL_ID)
                ON DELETE RESTRICT;



ALTER TABLE INTEREST_CALC
ADD CONSTRAINT RTP31901  FOREIGN KEY (N_PYMNT_DTL_ID)
                REFERENCES PAYMENT_DTL  (N_PYMNT_DTL_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_PAYME AFTER INSERT ON PAYMENT_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE PAYMENT_DTL
      SET
        PAYMENT_DTL.N_AUTOTAKS_REP_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM AUTOTAKS_REPORT
            WHERE
              new.N_AUTOTAKS_REP_ID = AUTOTAKS_REPORT.N_AUTOTAKS_REP_ID
        )
 ;

CREATE TRIGGER tI_PAYM2 AFTER INSERT ON PAYMENT_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE PAYMENT_DTL
      SET
        PAYMENT_DTL.N_RECOURSE_MESS_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM RECOURSE_MESSAGE
            WHERE
              new.N_RECOURSE_MESS_ID = RECOURSE_MESSAGE.N_RECOURSE_MESS_ID
        )
 ;

CREATE TRIGGER tI_PAYM3 AFTER INSERT ON PAYMENT_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE PAYMENT_DTL
      SET
        PAYMENT_DTL.N_INJURY_COMP_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INJURY_COMP
            WHERE
              new.N_INJURY_COMP_ID = INJURY_COMP.N_INJURY_COMP_ID
        )
 ;

CREATE TRIGGER tI_PAYM4 AFTER INSERT ON PAYMENT_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE PAYMENT_DTL
      SET
        PAYMENT_DTL.N_DEDUC_DIFF_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM DEDUC_DIFFERENCE
            WHERE
              new.N_DEDUC_DIFF_ID = DEDUC_DIFFERENCE.N_DEDUC_DIFF_ID
        )
 ;

CREATE TRIGGER tI_PAYM5 AFTER INSERT ON PAYMENT_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE PAYMENT_DTL
      SET
        PAYMENT_DTL.N_INC_INV_DTL_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INC_INVOICE_DTL
            WHERE
              new.N_INC_INV_DTL_ID = INC_INVOICE_DTL.N_INC_INV_DTL_ID
        )
 ;

CREATE TRIGGER tI_PAYM6 AFTER INSERT ON PAYMENT_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE PAYMENT_DTL
      SET
        PAYMENT_DTL.N_LINE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM LINE
            WHERE
              new.N_LINE_ID = LINE.N_LINE_ID
        )
 ;

CREATE TRIGGER tI_PAYM7 AFTER INSERT ON PAYMENT_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE PAYMENT_DTL
      SET
        PAYMENT_DTL.N_PYMNT_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM PAYMENT
            WHERE
              new.N_PYMNT_ID = PAYMENT.N_PYMNT_ID
        )
 ;

CREATE TRIGGER tD_PAYME AFTER DELETE ON PAYMENT_DTL
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INTEREST_CALC WHERE INTEREST_CALC.N_PYMNT_DTL_ID =
old.N_PYMNT_DTL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete PAYMENT_DTL because INTEREST_CALC exists.');
        END
 ;

CREATE TRIGGER tD_PAYM2 AFTER DELETE ON PAYMENT_DTL
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ITEM_PAYMNT_XREF WHERE ITEM_PAYMNT_XREF.N_PYMNT_DTL_ID =
old.N_PYMNT_DTL_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete PAYMENT_DTL because ITEM_PAYMNT_XREF exists.');
        END
 ;


   

CREATE TABLE PERFORMER
(
        N_PRFMR_ID            CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        N_CLAIMANT_ROLE_ID    CHAR(16) NOT NULL, 
        D_ACTIVATION          TIMESTAMP NOT NULL, 
        D_DEACTIVATION        TIMESTAMP NOT NULL, 
        C_PRFMR_ROLE          CHAR(5) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_PRFMR_DEPT_CD       CHAR(5) NOT NULL DEFAULT '', 
        C_PRFMR_WRKDEPT_CD    CHAR(5) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP32001 ON PERFORMER
(
        N_PRFMR_ID            ASC
);



CREATE UNIQUE INDEX XTP32002 ON PERFORMER
(
        N_CLAIM_ID            ASC, 
        C_PRFMR_ROLE          ASC, 
        N_ORG_ENTY_ID         ASC, 
        C_RCD_DEL             ASC, 
        D_DEACTIVATION        ASC, 
        N_PRFMR_ID            ASC
)
         CLUSTER;



CREATE INDEX XTP32010 ON PERFORMER
(
        N_ORG_ENTY_ID         ASC, 
        D_DEACTIVATION        ASC
);



CREATE INDEX XTP32011 ON PERFORMER
(
        N_LINE_ID             ASC, 
        N_CLAIMANT_ROLE_ID    ASC, 
        N_CLAIM_ID            ASC, 
        C_PRFMR_ROLE          ASC, 
        D_DEACTIVATION        ASC, 
        C_RCD_DEL             ASC
);



CREATE INDEX XTP32012 ON PERFORMER
(
        C_PRFMR_ROLE          ASC, 
        D_DEACTIVATION        ASC, 
        N_CLAIM_ID            ASC, 
        N_ORG_ENTY_ID         ASC, 
        C_RCD_DEL             ASC, 
        N_PRFMR_ID            ASC
);



ALTER TABLE PERFORMER
ADD CONSTRAINT XTP32001  PRIMARY KEY (N_PRFMR_ID);



ALTER TABLE PERFORMER
ADD CONSTRAINT RTP31324  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE PERFORMER
ADD CONSTRAINT RTP30021  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE SET NULL;



ALTER TABLE PERFORMER
ADD CONSTRAINT RTP22218  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



ALTER TABLE PERFORMER
ADD CONSTRAINT RTP23206  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE SET NULL;



ALTER TABLE CCS_TASK
ADD CONSTRAINT RTP32001  FOREIGN KEY (N_PRFMR_ID)
                REFERENCES PERFORMER  (N_PRFMR_ID)
                ON DELETE SET NULL;



ALTER TABLE PHYSICAL_FILE_COPY
ADD CONSTRAINT RTP32004  FOREIGN KEY (N_PRFMR_ID)
                REFERENCES PERFORMER  (N_PRFMR_ID)
                ON DELETE RESTRICT;



ALTER TABLE DISABILITY
ADD CONSTRAINT RTP32002  FOREIGN KEY (N_PRFMR_ID)
                REFERENCES PERFORMER  (N_PRFMR_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_PERFO AFTER INSERT ON PERFORMER
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE PERFORMER
      SET
        PERFORMER.N_CLAIMANT_ROLE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIMANT_ROLE
            WHERE
              new.N_CLAIMANT_ROLE_ID = CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID
        )
 ;

CREATE TRIGGER tI_PERF2 AFTER INSERT ON PERFORMER
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE PERFORMER
      SET
        PERFORMER.N_LINE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM LINE
            WHERE
              new.N_LINE_ID = LINE.N_LINE_ID
        )
 ;

CREATE TRIGGER tD_PERFO AFTER DELETE ON PERFORMER
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM DISABILITY WHERE DISABILITY.N_PRFMR_ID = old.N_PRFMR_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete PERFORMER because DISABILITY exists.');
        END
 ;

CREATE TRIGGER tD_PERF2 AFTER DELETE ON PERFORMER
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PHYSICAL_FILE_COPY WHERE PHYSICAL_FILE_COPY.N_PRFMR_ID =
old.N_PRFMR_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete PERFORMER because PHYSICAL_FILE_COPY exists.');
        END
 ;

CREATE TRIGGER tD_PERF3 AFTER DELETE ON PERFORMER
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
    UPDATE CCS_TASK
      SET
        CCS_TASK.N_PRFMR_ID = NULL
      WHERE
        CCS_TASK.N_PRFMR_ID = old.N_PRFMR_ID
 ;

CREATE TRIGGER tU_PERFO AFTER UPDATE ON PERFORMER
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM PERFORMER WHERE new.N_PRFMR_ID <> old.N_PRFMR_ID)) AND
     (0 < (SELECT count(*) FROM DISABILITY WHERE DISABILITY.N_PRFMR_ID = old.N_PRFMR_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update PERFORMER because DISABILITY exists.');
        END
 ;

CREATE TRIGGER tU_PERF2 AFTER UPDATE ON PERFORMER
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PERFORMER WHERE new.N_PRFMR_ID <> old.N_PRFMR_ID))
     UPDATE CCS_TASK
       SET
         CCS_TASK.N_PRFMR_ID = NULL
       WHERE
         CCS_TASK.N_PRFMR_ID = old.N_PRFMR_ID
 ;

CREATE TRIGGER tU_PERF3 AFTER UPDATE ON PERFORMER
     FOR EACH ROW MODE DB2SQL
    UPDATE PERFORMER
      SET
        PERFORMER.N_CLAIMANT_ROLE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIMANT_ROLE
            WHERE
              new.N_CLAIMANT_ROLE_ID = CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID
        )
 ;

CREATE TRIGGER tU_PERF4 AFTER UPDATE ON PERFORMER
     FOR EACH ROW MODE DB2SQL
    UPDATE PERFORMER
      SET
        PERFORMER.N_LINE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM LINE
            WHERE
              new.N_LINE_ID = LINE.N_LINE_ID
        )
 ;


   

CREATE TABLE PERM_LOSS_EARNING
(
        N_PERM_LOSS_EAR_ID    CHAR(16) NOT NULL DEFAULT '', 
        F_EET_PCT             DECIMAL(3, 2) DEFAULT NULL, 
        C_EET_PCT_DTRMD_BY    CHAR(5) NOT NULL DEFAULT '', 
        C_PREVIOUS_EET        CHAR(5) NOT NULL DEFAULT '', 
        C_P_EET_INFLUENCE     CHAR(5) NOT NULL DEFAULT '', 
        A_ANNUAL_SALARY       DECIMAL(19, 6) DEFAULT NULL, 
        C_ANN_SALARY_UOM      CHAR(5) NOT NULL DEFAULT '', 
        C_ESTIM_ANN_SALARY    CHAR(5) NOT NULL DEFAULT '', 
        C_ESTIM_AN_SAL_UOM    CHAR(5) NOT NULL DEFAULT '', 
        A_ADJ_ANN_SALARY      DECIMAL(19, 6) DEFAULT NULL, 
        C_ADJ_ANN_SAL_UOM     CHAR(5) NOT NULL DEFAULT '', 
        A_CAP_COMP_AMT        DECIMAL(19, 6) DEFAULT NULL, 
        C_CAP_COMP_UOM        CHAR(5) NOT NULL DEFAULT '', 
        A_REC_BENEFIT_AMT     DECIMAL(19, 6) DEFAULT NULL, 
        C_REC_BENEFIT_UOM     CHAR(5) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0
);



CREATE UNIQUE INDEX XTP45601 ON PERM_LOSS_EARNING
(
        N_PERM_LOSS_EAR_ID    ASC
)
         CLUSTER;



ALTER TABLE PERM_LOSS_EARNING
ADD CONSTRAINT XTP45601  PRIMARY KEY (N_PERM_LOSS_EAR_ID);



ALTER TABLE PERM_LOSS_EARNING
ADD CONSTRAINT RTP45301  FOREIGN KEY (N_PERM_LOSS_EAR_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_PERM_ AFTER INSERT ON PERM_LOSS_EARNING
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INJURY_COMP WHERE new.N_PERM_LOSS_EAR_ID =
INJURY_COMP.N_INJURY_COMP_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert PERM_LOSS_EARNING because INJURY_COMP does not
exist.');
        END
 ;


   

CREATE TABLE PERMANNT_DISABILTY
(
        N_PERM_DISABLTY_ID    CHAR(16) NOT NULL DEFAULT '', 
        N_DISABILITY_CODE     CHAR(16) DEFAULT NULL, 
        C_INJURY_SIDE         CHAR(5) NOT NULL DEFAULT '', 
        A_USED_DISAB_PCT      DECIMAL(5, 2) DEFAULT NULL, 
        C_DETERMINED_BY       CHAR(5) NOT NULL DEFAULT '', 
        C_CASUAL_CONNECT      CHAR(5) NOT NULL DEFAULT '', 
        C_PREVIOUS_PAIN       CHAR(5) NOT NULL DEFAULT '', 
        C_P_PAIN_INFLUENCE    CHAR(5) NOT NULL DEFAULT '', 
        F_TOTAL_DISAB_PCT     DECIMAL(5, 2) DEFAULT NULL, 
        F_ON_ACC_DISAB_PCT    DECIMAL(5, 2) DEFAULT NULL, 
        F_PREV_PAID_PCT       DECIMAL(5, 2) DEFAULT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0
);



CREATE UNIQUE INDEX XTP45401 ON PERMANNT_DISABILTY
(
        N_PERM_DISABLTY_ID    ASC
)
         CLUSTER;



ALTER TABLE PERMANNT_DISABILTY
ADD CONSTRAINT XTP45401  PRIMARY KEY (N_PERM_DISABLTY_ID);



ALTER TABLE PERMANNT_DISABILTY
ADD CONSTRAINT RTP45304  FOREIGN KEY (N_PERM_DISABLTY_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



ALTER TABLE TREATMENT_OFFER
ADD CONSTRAINT RTP45401  FOREIGN KEY (N_PERM_DISABLTY_ID)
                REFERENCES PERMANNT_DISABILTY  (N_PERM_DISABLTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE TREATMENT_PLAN
ADD CONSTRAINT RTP45402  FOREIGN KEY (N_PERM_DISABLTY_ID)
                REFERENCES PERMANNT_DISABILTY  (N_PERM_DISABLTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE SUPP_PERM_DISAB_AT
ADD CONSTRAINT RTP45403  FOREIGN KEY (N_SUPP_P_DIS_AT_ID)
                REFERENCES PERMANNT_DISABILTY  (N_PERM_DISABLTY_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_PERMA AFTER INSERT ON PERMANNT_DISABILTY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INJURY_COMP WHERE new.N_PERM_DISABLTY_ID =
INJURY_COMP.N_INJURY_COMP_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert PERMANNT_DISABILTY because INJURY_COMP does not
exist.');
        END
 ;

CREATE TRIGGER tD_PERMA AFTER DELETE ON PERMANNT_DISABILTY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM SUPP_PERM_DISAB_AT WHERE SUPP_PERM_DISAB_AT.N_SUPP_P_DIS_AT_ID =
old.N_PERM_DISABLTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete PERMANNT_DISABILTY because SUPP_PERM_DISAB_AT
exists.');
        END
 ;

CREATE TRIGGER tD_PERM2 AFTER DELETE ON PERMANNT_DISABILTY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM TREATMENT_PLAN WHERE TREATMENT_PLAN.N_PERM_DISABLTY_ID =
old.N_PERM_DISABLTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete PERMANNT_DISABILTY because TREATMENT_PLAN exists.');
        END
 ;

CREATE TRIGGER tD_PERM3 AFTER DELETE ON PERMANNT_DISABILTY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM TREATMENT_OFFER WHERE TREATMENT_OFFER.N_PERM_DISABLTY_ID =
old.N_PERM_DISABLTY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete PERMANNT_DISABILTY because TREATMENT_OFFER exists.');
        END
 ;


   

CREATE TABLE PERSONAL_PROFILE
(
        N_TASK_TEMPL_ID       CHAR(16) NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        C_MAN_OVRD            CHAR(1) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP32101 ON PERSONAL_PROFILE
(
        N_TASK_TEMPL_ID       ASC, 
        N_ORG_ENTY_ID         ASC
);



ALTER TABLE PERSONAL_PROFILE
ADD CONSTRAINT XTP32101  PRIMARY KEY (N_TASK_TEMPL_ID, N_ORG_ENTY_ID);



ALTER TABLE PERSONAL_PROFILE
ADD CONSTRAINT RTP31325  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



   

CREATE TABLE PHONE
(
        N_PHONE_ID            CHAR(16) NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        N_PHONE               CHAR(10) NOT NULL, 
        N_PHONE_EXTN          CHAR(10) NOT NULL, 
        C_PHONE_COUNTRY       CHAR(5) NOT NULL, 
        C_PHONE_TYPE          CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP32201 ON PHONE
(
        N_PHONE_ID            ASC
);



CREATE UNIQUE INDEX XTP32202 ON PHONE
(
        N_ORG_ENTY_ID         ASC, 
        N_PHONE_ID            ASC
)
         CLUSTER;



ALTER TABLE PHONE
ADD CONSTRAINT XTP32201  PRIMARY KEY (N_PHONE_ID);



ALTER TABLE PHONE
ADD CONSTRAINT RTP31304  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



   

CREATE TABLE PHYSICAL_FILE_COPY
(
        N_FILE_COPY_ID        CHAR(16) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        N_PRFMR_ID            CHAR(16) NOT NULL, 
        Q_VOLUME              INTEGER, 
        D_OPEN                TIMESTAMP NOT NULL, 
        D_CLOSE               TIMESTAMP NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP32401 ON PHYSICAL_FILE_COPY
(
        N_FILE_COPY_ID        ASC
);



CREATE INDEX XTP32402 ON PHYSICAL_FILE_COPY
(
        N_CLAIM_ID            ASC, 
        C_RCD_DEL             ASC
);



CREATE INDEX XTP32403 ON PHYSICAL_FILE_COPY
(
        N_PRFMR_ID            ASC, 
        C_RCD_DEL             ASC
);



ALTER TABLE PHYSICAL_FILE_COPY
ADD CONSTRAINT XTP32401  PRIMARY KEY (N_FILE_COPY_ID);



ALTER TABLE PHYSICAL_FILE_COPY
ADD CONSTRAINT RTP32004  FOREIGN KEY (N_PRFMR_ID)
                REFERENCES PERFORMER  (N_PRFMR_ID)
                ON DELETE RESTRICT;



ALTER TABLE PHYSICAL_FILE_COPY
ADD CONSTRAINT RTP22220  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



   

CREATE TABLE POL_COV
(
        N_POL_COV_ID          CHAR(16) NOT NULL, 
        N_POLICY_ID           CHAR(16) NOT NULL, 
        A_POL_COV_AMT         DECIMAL(19, 6), 
        C_CURRENCY_UOM        CHAR(5) NOT NULL, 
        C_STATUS              CHAR(5) NOT NULL, 
        D_COV_ORIG_INFORCE    TIMESTAMP NOT NULL, 
        D_COV_CHNGE_NFORCE    TIMESTAMP NOT NULL, 
        D_COV_EXPIRATION      TIMESTAMP NOT NULL, 
        C_SOFL_CODE           CHAR(8) NOT NULL, 
        C_TOPMIX_CODE         CHAR(17) NOT NULL, 
        A_BRANDKASSE_PCT      DECIMAL(5, 2), 
        N_BRANDKASSE_ID       CHAR(2) NOT NULL, 
        C_POL_COV_TYPE        CHAR(5) NOT NULL, 
        N_ITEM_ID             CHAR(16) NOT NULL, 
        N_COV_OBJ_PRIMO1      INTEGER, 
        N_COV_OBJ_PRIMO2      INTEGER, 
        C_POLICY_COVERAGE     CHAR(9) NOT NULL, 
        C_SAP_CENTER_CD       CHAR(5) NOT NULL, 
        C_SAP_COSTPLACE       CHAR(4) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        T_BRNDKASSE_NAME      VARCHAR(50) NOT NULL DEFAULT '', 
        T_BRNDKASSE_CUSTNO    CHAR(7) NOT NULL DEFAULT '', 
        T_COVERAGE_CODE       CHAR(3) NOT NULL DEFAULT '', 
        C_DED_METHOD          CHAR(5) NOT NULL DEFAULT '', 
        T_TOPLA_DED_DESCR     VARCHAR(30) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP32601 ON POL_COV
(
        N_POL_COV_ID          ASC
);



ALTER TABLE POL_COV
ADD CONSTRAINT XTP32601  PRIMARY KEY (N_POL_COV_ID);



ALTER TABLE POL_COV
ADD CONSTRAINT RTP32905  FOREIGN KEY (N_POLICY_ID)
                REFERENCES POLICY  (N_POLICY_ID)
                ON DELETE RESTRICT;



ALTER TABLE POL_COV
ADD CONSTRAINT RTP29107  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE POLICY_TEXT
ADD CONSTRAINT RTP32603  FOREIGN KEY (N_POL_COV_ID)
                REFERENCES POL_COV  (N_POL_COV_ID)
                ON DELETE RESTRICT;



ALTER TABLE LINE
ADD CONSTRAINT RTP32602  FOREIGN KEY (N_POL_COV_ID)
                REFERENCES POL_COV  (N_POL_COV_ID)
                ON DELETE SET NULL;



CREATE TRIGGER tI_POL_C AFTER INSERT ON POL_COV
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM POLICY WHERE new.N_POLICY_ID = POLICY.N_POLICY_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert POL_COV because POLICY does not exist.');
        END
 ;

CREATE TRIGGER tI_POL_2 AFTER INSERT ON POL_COV
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE POL_COV
      SET
        POL_COV.N_ITEM_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ITEM
            WHERE
              new.N_ITEM_ID = ITEM.N_ITEM_ID
        )
 ;

CREATE TRIGGER tD_POL_C AFTER DELETE ON POL_COV
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
    UPDATE LINE
      SET
        LINE.N_POL_COV_ID = NULL
      WHERE
        LINE.N_POL_COV_ID = old.N_POL_COV_ID
 ;

CREATE TRIGGER tD_POL_2 AFTER DELETE ON POL_COV
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM POLICY_TEXT WHERE POLICY_TEXT.N_POL_COV_ID = old.N_POL_COV_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete POL_COV because POLICY_TEXT exists.');
        END
 ;

CREATE TRIGGER tU_POL_C AFTER UPDATE ON POL_COV
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM POL_COV WHERE new.N_POL_COV_ID <> old.N_POL_COV_ID))
     UPDATE LINE
       SET
         LINE.N_POL_COV_ID = NULL
       WHERE
         LINE.N_POL_COV_ID = old.N_POL_COV_ID
 ;

CREATE TRIGGER tU_POL_2 AFTER UPDATE ON POL_COV
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM POLICY WHERE new.N_POLICY_ID = POLICY.N_POLICY_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update POL_COV because POLICY does not exist.');
        END
 ;


   

CREATE TABLE POLICE_REPORT
(
        N_POLICE_REPORT_ID    CHAR(16) NOT NULL, 
        N_LOSS_ID             CHAR(16) NOT NULL, 
        D_POLICE_REPORTED     TIMESTAMP NOT NULL, 
        C_POLICE_NOTIF_MOD    CHAR(5) NOT NULL, 
        M_REPORT_NOTIF_BY     CHAR(50) NOT NULL, 
        POLICE_GTI_NO         CHAR(7) NOT NULL, 
        N_POLICE_REPORT_NO    CHAR(19) NOT NULL, 
        M_REPORT_RECEIVER     CHAR(50) NOT NULL, 
        C_POLICE_RECEIPT      CHAR(5) NOT NULL, 
        D_POLICE_DOL          TIMESTAMP NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        T_OTHER_POL_STN       CHAR(30) NOT NULL
);



CREATE UNIQUE INDEX XTP42201 ON POLICE_REPORT
(
        N_POLICE_REPORT_ID    ASC
);



ALTER TABLE POLICE_REPORT
ADD CONSTRAINT XTP42201  PRIMARY KEY (N_POLICE_REPORT_ID);



ALTER TABLE POLICE_REPORT
ADD CONSTRAINT RTP30803  FOREIGN KEY (N_LOSS_ID)
                REFERENCES LOSS  (N_LOSS_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_POLIC AFTER INSERT ON POLICE_REPORT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE POLICE_REPORT
      SET
        POLICE_REPORT.N_LOSS_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM LOSS
            WHERE
              new.N_LOSS_ID = LOSS.N_LOSS_ID
        )
 ;


   

CREATE TABLE POLICY
(
        N_POLICY_ID           CHAR(16) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        N_POLICY              CHAR(10) NOT NULL, 
        C_CLM_POLICY_TYP      CHAR(5) NOT NULL, 
        D_POLICY_EFF_DT       TIMESTAMP NOT NULL, 
        D_POLICY_EXPIR_DT     TIMESTAMP NOT NULL, 
        C_POL_STAT            CHAR(5) NOT NULL, 
        M_NAMED_INSD          CHAR(200) NOT NULL, 
        T_PRODUCT_DESC        VARCHAR(100) NOT NULL, 
        N_PRODUCT_ID          CHAR(10) NOT NULL, 
        T_PRODUCT_VER         CHAR(16) NOT NULL, 
        N_TERMS               CHAR(10) NOT NULL, 
        N_POLICY_HOLDER_ID    CHAR(7) NOT NULL, 
        T_AGREEMENT_TYPE      CHAR(40) NOT NULL, 
        C_POLICY_TYPE         CHAR(5) NOT NULL, 
        N_RENEWAL_DATE        CHAR(4) NOT NULL, 
        C_ORGAN_KODE          CHAR(5) NOT NULL, 
        A_PREMIUM_AMT         DECIMAL(19, 6), 
        C_PREMIUM_UOM         CHAR(5) NOT NULL, 
        C_PAYMENT_FREQ        CHAR(2) NOT NULL, 
        C_PAYMENT_STATUS      CHAR(5) NOT NULL, 
        D_LAST_CHANGED        TIMESTAMP NOT NULL, 
        C_CHANGE_TYPE         CHAR(10) NOT NULL, 
        C_CANCEL_REASON       CHAR(5) NOT NULL, 
        N_CHANGED_BY_ID       CHAR(3) NOT NULL, 
        M_FILE_KEPT_BY_ID     CHAR(3) NOT NULL, 
        C_POL_SYSTEM          CHAR(5) NOT NULL, 
        C_SPO_CUST_NBR        CHAR(7) NOT NULL, 
        C_BRAND               CHAR(5) NOT NULL, 
        C_POL_TXT_IND         CHAR(1) NOT NULL, 
        C_LITRA               CHAR(2) NOT NULL, 
        N_INS_OBJ_PRIMO_ID    INTEGER, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        A_LOSSBONUS_AMT       DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_LOSSBONUS_UOM       CHAR(5) NOT NULL DEFAULT '', 
        C_CLAIMRULE           CHAR(5) NOT NULL DEFAULT '', 
        A_POLICY_VAT_PCT      DECIMAL(5, 2) DEFAULT NULL, 
        A_CLAIM_H_VAT_PCT     DECIMAL(5, 2) DEFAULT NULL, 
        C_CLAIM_AUTO_IND      CHAR(1) NOT NULL DEFAULT 'N', 
        T_BONUS_SYSTEM        CHAR(8) NOT NULL DEFAULT '', 
        N_INS_OBJECT_ID       CHAR(16) NOT NULL DEFAULT '', 
        N_INS_OBJ_ENTITY      CHAR(25) NOT NULL DEFAULT '', 
        N_SERIAL_NUMBER       CHAR(3) NOT NULL DEFAULT '', 
        N_BE_POLICY_ID        CHAR(16) NOT NULL DEFAULT '', 
        C_PROFESSION_KT       CHAR(7) NOT NULL DEFAULT '', 
        D_ORIG_INFORCE_DT     TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        T_CONVENTION          VARCHAR(54) NOT NULL DEFAULT '', 
        C_CONVENTION_KT       CHAR(3) NOT NULL DEFAULT '', 
        C_REINSURANCE_CD      CHAR(1) NOT NULL DEFAULT '', 
        C_BRANCH_CODE         CHAR(6) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP32901 ON POLICY
(
        N_POLICY_ID           ASC
);



CREATE INDEX XTP32903 ON POLICY
(
        N_POLICY              ASC
)
         CLUSTER;



CREATE INDEX XTP32905 ON POLICY
(
        N_CLAIM_ID            ASC, 
        N_POLICY_ID           ASC
);



CREATE INDEX XTP32906 ON POLICY
(
        N_POLICY_HOLDER_ID    ASC
);



CREATE INDEX XTP32907 ON POLICY
(
        D_LAST_UPDT_TS        ASC
);



CREATE INDEX XTP32910 ON POLICY
(
        C_LITRA               ASC
);



CREATE INDEX XTP32911 ON POLICY
(
        N_POLICY              ASC, 
        N_POLICY_ID           ASC, 
        C_CLM_POLICY_TYP      ASC, 
        N_POLICY_HOLDER_ID    ASC, 
        N_BE_POLICY_ID        ASC
);



ALTER TABLE POLICY
ADD CONSTRAINT XTP32901  PRIMARY KEY (N_POLICY_ID);



ALTER TABLE POLICY
ADD CONSTRAINT RTP28408  FOREIGN KEY (N_POLICY_ID)
                REFERENCES INSURANCE_ENTITY  (N_ENTITY_ID)
                ON DELETE RESTRICT;



ALTER TABLE POLICY
ADD CONSTRAINT RTP22221  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



ALTER TABLE POLICY_TEXT
ADD CONSTRAINT RTP32906  FOREIGN KEY (N_POLICY_ID)
                REFERENCES POLICY  (N_POLICY_ID)
                ON DELETE RESTRICT;



ALTER TABLE QC_SCORE
ADD CONSTRAINT RTP32907  FOREIGN KEY (N_POLICY_ID)
                REFERENCES POLICY  (N_POLICY_ID)
                ON DELETE RESTRICT;



ALTER TABLE POL_COV
ADD CONSTRAINT RTP32905  FOREIGN KEY (N_POLICY_ID)
                REFERENCES POLICY  (N_POLICY_ID)
                ON DELETE RESTRICT;



ALTER TABLE CLAIM
ADD CONSTRAINT RTP32903  FOREIGN KEY (N_POLICY_ID)
                REFERENCES POLICY  (N_POLICY_ID)
                ON DELETE RESTRICT;



ALTER TABLE POLICY_TERMS_CODE
ADD CONSTRAINT RTP32908  FOREIGN KEY (N_POLICY_ID)
                REFERENCES POLICY  (N_POLICY_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_POLIC AFTER INSERT ON POLICY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE POLICY
      SET
        POLICY.N_CLAIM_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIM
            WHERE
              new.N_CLAIM_ID = CLAIM.N_CLAIM_ID
        )
 ;

CREATE TRIGGER tD_POLIC AFTER DELETE ON POLICY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM POLICY_TERMS_CODE WHERE POLICY_TERMS_CODE.N_POLICY_ID =
old.N_POLICY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete POLICY because POLICY_TERMS_CODE exists.');
        END
 ;

CREATE TRIGGER tD_POLI2 AFTER DELETE ON POLICY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CLAIM WHERE CLAIM.N_POLICY_ID = old.N_POLICY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete POLICY because CLAIM exists.');
        END
 ;

CREATE TRIGGER tD_POLI3 AFTER DELETE ON POLICY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM POL_COV WHERE POL_COV.N_POLICY_ID = old.N_POLICY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete POLICY because POL_COV exists.');
        END
 ;

CREATE TRIGGER tD_POLI4 AFTER DELETE ON POLICY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM QC_SCORE WHERE QC_SCORE.N_POLICY_ID = old.N_POLICY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete POLICY because QC_SCORE exists.');
        END
 ;

CREATE TRIGGER tD_POLI5 AFTER DELETE ON POLICY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM POLICY_TEXT WHERE POLICY_TEXT.N_POLICY_ID = old.N_POLICY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete POLICY because POLICY_TEXT exists.');
        END
 ;

CREATE TRIGGER tU_POLIC AFTER UPDATE ON POLICY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM POLICY WHERE new.N_POLICY_ID <> old.N_POLICY_ID)) AND
     (0 < (SELECT count(*) FROM POL_COV WHERE POL_COV.N_POLICY_ID = old.N_POLICY_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update POLICY because POL_COV exists.');
        END
 ;


   

CREATE TABLE POLICY_TERMS_CODE
(
        N_PO_TERMS_CODE_ID    CHAR(16) NOT NULL, 
        N_POLICY_ID           CHAR(16) NOT NULL, 
        N_TERMS_CODE          CHAR(10) NOT NULL DEFAULT '', 
        C_MAIN_TERM_CD_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP32701 ON POLICY_TERMS_CODE
(
        N_PO_TERMS_CODE_ID    ASC
)
         CLUSTER;



ALTER TABLE POLICY_TERMS_CODE
ADD CONSTRAINT XTP32701  PRIMARY KEY (N_PO_TERMS_CODE_ID);



ALTER TABLE POLICY_TERMS_CODE
ADD CONSTRAINT RTP32908  FOREIGN KEY (N_POLICY_ID)
                REFERENCES POLICY  (N_POLICY_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_POLIC AFTER INSERT ON POLICY_TERMS_CODE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM POLICY WHERE new.N_POLICY_ID = POLICY.N_POLICY_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert POLICY_TERMS_CODE because POLICY does not exist.');
        END
 ;


   

CREATE TABLE POLICY_TEXT
(
        N_POLICY_TEXT_ID      CHAR(16) NOT NULL, 
        N_POLICY_ID           CHAR(16) NOT NULL, 
        N_POL_COV_ID          CHAR(16) NOT NULL, 
        N_ITEM_ID             CHAR(16) NOT NULL, 
        D_ACTIVE_FROM_DT      TIMESTAMP NOT NULL, 
        C_INT_EXT_IND         CHAR(1) NOT NULL, 
        M_TYPE                CHAR(24) NOT NULL, 
        T_TEXT                CLOB, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        T_TEXT_REF            ROWID NOT NULL
                GENERATED BY DEFAULT , 
        C_TEXT_LEVEL_CD       CHAR(5) NOT NULL DEFAULT 'DAEKN'
);



CREATE UNIQUE INDEX XTP42301 ON POLICY_TEXT
(
        N_POLICY_TEXT_ID      ASC
);



CREATE UNIQUE INDEX XTP42302 ON POLICY_TEXT
(
        T_TEXT_REF            ASC
);



ALTER TABLE POLICY_TEXT
ADD CONSTRAINT XTP42301  PRIMARY KEY (N_POLICY_TEXT_ID);



ALTER TABLE POLICY_TEXT
ADD CONSTRAINT RTP29116  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE POLICY_TEXT
ADD CONSTRAINT RTP32906  FOREIGN KEY (N_POLICY_ID)
                REFERENCES POLICY  (N_POLICY_ID)
                ON DELETE RESTRICT;



ALTER TABLE POLICY_TEXT
ADD CONSTRAINT RTP32603  FOREIGN KEY (N_POL_COV_ID)
                REFERENCES POL_COV  (N_POL_COV_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_POLIC AFTER INSERT ON POLICY_TEXT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE POLICY_TEXT
      SET
        POLICY_TEXT.N_POL_COV_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM POL_COV
            WHERE
              new.N_POL_COV_ID = POL_COV.N_POL_COV_ID
        )
 ;

CREATE TRIGGER tI_POLI2 AFTER INSERT ON POLICY_TEXT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE POLICY_TEXT
      SET
        POLICY_TEXT.N_POLICY_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM POLICY
            WHERE
              new.N_POLICY_ID = POLICY.N_POLICY_ID
        )
 ;

CREATE TRIGGER tI_POLI3 AFTER INSERT ON POLICY_TEXT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE POLICY_TEXT
      SET
        POLICY_TEXT.N_ITEM_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ITEM
            WHERE
              new.N_ITEM_ID = ITEM.N_ITEM_ID
        )
 ;


   

CREATE TABLE PREF_TX_DTL
(
        N_PREF_TX_DTL_ID      CHAR(16) NOT NULL, 
        A_PREF_ENT_AMT        DECIMAL(19, 6), 
        A_PREF_INV_TOT        DECIMAL(19, 6), 
        A_PREF_RCPT_CHK       DECIMAL(19, 6), 
        C_PREF_CURR_UOM       CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP33001 ON PREF_TX_DTL
(
        N_PREF_TX_DTL_ID      ASC
);



CREATE INDEX XTP33002 ON PREF_TX_DTL
(
        C_PREF_CURR_UOM       ASC
);



ALTER TABLE PREF_TX_DTL
ADD CONSTRAINT XTP33001  PRIMARY KEY (N_PREF_TX_DTL_ID);



   

CREATE TABLE PRICE
(
        N_PRICE_ID            CHAR(16) NOT NULL, 
        N_SUPPLIER_ID         CHAR(16) NOT NULL, 
        C_SUPP_TYPE           CHAR(5) NOT NULL, 
        C_PER_UNIT            CHAR(5) NOT NULL, 
        D_EFFECTIVE_DT        TIMESTAMP NOT NULL, 
        D_EXPIRATION_DT       TIMESTAMP NOT NULL, 
        N_PRICE_AMT           DECIMAL(19, 6), 
        C_PRICE_UOM           CHAR(5) NOT NULL DEFAULT 'DKK', 
        F_DISC_INC_PCT        DECIMAL(5, 2), 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        T_COMMENTS            VARCHAR(255) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP42401 ON PRICE
(
        N_PRICE_ID            ASC
);



ALTER TABLE PRICE
ADD CONSTRAINT XTP42401  PRIMARY KEY (N_PRICE_ID);



ALTER TABLE PRICE
ADD CONSTRAINT RTP43703  FOREIGN KEY (N_SUPPLIER_ID)
                REFERENCES SUPPLIER  (N_SUPPLIER_ID)
                ON DELETE RESTRICT;



ALTER TABLE SELECTED_UNIT
ADD CONSTRAINT RTP42401  FOREIGN KEY (N_PRICE_ID)
                REFERENCES PRICE  (N_PRICE_ID)
                ON DELETE RESTRICT;



ALTER TABLE REPAIR_AGREEMENT
ADD CONSTRAINT RTP42402  FOREIGN KEY (N_REP_AGREEMT_ID)
                REFERENCES PRICE  (N_PRICE_ID)
                ON DELETE RESTRICT;



ALTER TABLE AUTOGLASS_AGREEMNT
ADD CONSTRAINT RTP42403  FOREIGN KEY (N_GLASS_AGREEMT_ID)
                REFERENCES PRICE  (N_PRICE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_PRICE AFTER INSERT ON PRICE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE PRICE
      SET
        PRICE.N_SUPPLIER_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM SUPPLIER
            WHERE
              new.N_SUPPLIER_ID = SUPPLIER.N_SUPPLIER_ID
        )
 ;

CREATE TRIGGER tD_PRICE AFTER DELETE ON PRICE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM AUTOGLASS_AGREEMNT WHERE AUTOGLASS_AGREEMNT.N_GLASS_AGREEMT_ID =
old.N_PRICE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete PRICE because AUTOGLASS_AGREEMNT exists.');
        END
 ;

CREATE TRIGGER tD_PRIC2 AFTER DELETE ON PRICE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM REPAIR_AGREEMENT WHERE REPAIR_AGREEMENT.N_REP_AGREEMT_ID =
old.N_PRICE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete PRICE because REPAIR_AGREEMENT exists.');
        END
 ;

CREATE TRIGGER tD_PRIC3 AFTER DELETE ON PRICE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM SELECTED_UNIT WHERE SELECTED_UNIT.N_PRICE_ID = old.N_PRICE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete PRICE because SELECTED_UNIT exists.');
        END
 ;


   

CREATE TABLE PRICE_PER_UNITGRP
(
        N_PRICE_UNITGRP_ID    CHAR(16) NOT NULL, 
        N_REP_AGREEMT_ID      CHAR(16) NOT NULL, 
        C_CONTEXT             CHAR(5) NOT NULL DEFAULT '', 
        C_CODE                CHAR(5) NOT NULL DEFAULT '', 
        A_HOURLY_RATE         DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_HOURLY_RATE_UOM     CHAR(5) NOT NULL DEFAULT 'DKK', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP42501 ON PRICE_PER_UNITGRP
(
        N_PRICE_UNITGRP_ID    ASC, 
        N_REP_AGREEMT_ID      ASC
)
         CLUSTER;



ALTER TABLE PRICE_PER_UNITGRP
ADD CONSTRAINT XTP42501  PRIMARY KEY (N_PRICE_UNITGRP_ID, N_REP_AGREEMT_ID);



ALTER TABLE PRICE_PER_UNITGRP
ADD CONSTRAINT RTP42601  FOREIGN KEY (N_REP_AGREEMT_ID)
                REFERENCES REPAIR_AGREEMENT  (N_REP_AGREEMT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_PRICE AFTER INSERT ON PRICE_PER_UNITGRP
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM REPAIR_AGREEMENT WHERE new.N_REP_AGREEMT_ID =
REPAIR_AGREEMENT.N_REP_AGREEMT_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert PRICE_PER_UNITGRP because REPAIR_AGREEMENT does not
exist.');
        END
 ;


   

CREATE TABLE PRORATA_CALC
(
        N_PRORATA_CALC_ID     CHAR(16) NOT NULL, 
        N_OUT_INVOICE_ID      CHAR(16) NOT NULL, 
        A_MAX_PRORATA_AMT     DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_MAX_PRORATA_UOM     CHAR(5) NOT NULL, 
        A_PRORATA_PCT         DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        C_GUILT_PCT           CHAR(5) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0
);



CREATE UNIQUE INDEX XTP44101 ON PRORATA_CALC
(
        N_PRORATA_CALC_ID     ASC, 
        N_OUT_INVOICE_ID      ASC
);



ALTER TABLE PRORATA_CALC
ADD CONSTRAINT XTP44101  PRIMARY KEY (N_PRORATA_CALC_ID, N_OUT_INVOICE_ID);



ALTER TABLE PRORATA_CALC
ADD CONSTRAINT RTP44705  FOREIGN KEY (N_OUT_INVOICE_ID)
                REFERENCES OUT_INVOICE  (N_OUT_INVOICE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_PRORA AFTER INSERT ON PRORATA_CALC
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM OUT_INVOICE WHERE new.N_OUT_INVOICE_ID =
OUT_INVOICE.N_OUT_INVOICE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert PRORATA_CALC because OUT_INVOICE does not exist.');
        END
 ;


   

CREATE TABLE PRORATA_CALC_DTL
(
        N_PR_CALC_DTL_ID      CHAR(16) NOT NULL, 
        N_OUT_INV_DTL_ID      CHAR(16) NOT NULL, 
        A_NET_COST_AMT        DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_NET_COST_UOM        CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0
);



CREATE UNIQUE INDEX XTP44201 ON PRORATA_CALC_DTL
(
        N_PR_CALC_DTL_ID      ASC, 
        N_OUT_INV_DTL_ID      ASC
);



ALTER TABLE PRORATA_CALC_DTL
ADD CONSTRAINT XTP44201  PRIMARY KEY (N_PR_CALC_DTL_ID, N_OUT_INV_DTL_ID);



ALTER TABLE PRORATA_CALC_DTL
ADD CONSTRAINT RTP44801  FOREIGN KEY (N_OUT_INV_DTL_ID)
                REFERENCES OUT_INVOICE_DTL  (N_OUT_INV_DTL_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_PRORA AFTER INSERT ON PRORATA_CALC_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM OUT_INVOICE_DTL WHERE new.N_OUT_INV_DTL_ID =
OUT_INVOICE_DTL.N_OUT_INV_DTL_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert PRORATA_CALC_DTL because OUT_INVOICE_DTL does not
exist.');
        END
 ;


   

CREATE TABLE PTN_ANALYSIS_TRANS
(
        N_PATTERN_TRANS_ID    CHAR(16) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        N_EVENT_TYPE          INTEGER NOT NULL, 
        N_CLAIM_NUMBER        CHAR(9) NOT NULL, 
        D_TRANS_TS            TIMESTAMP NOT NULL
);



CREATE UNIQUE INDEX XTP51001 ON PTN_ANALYSIS_TRANS
(
        N_PATTERN_TRANS_ID    ASC
);



ALTER TABLE PTN_ANALYSIS_TRANS
ADD CONSTRAINT XTP51001  PRIMARY KEY (N_PATTERN_TRANS_ID);



ALTER TABLE PTN_ANALYSIS_TRANS
ADD CONSTRAINT RTP22205  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



ALTER TABLE MATCHED_PATTERN
ADD CONSTRAINT RTP51003  FOREIGN KEY (N_PATTERN_TRANS_ID)
                REFERENCES PTN_ANALYSIS_TRANS  (N_PATTERN_TRANS_ID)
                ON DELETE RESTRICT;



ALTER TABLE MATCHED_COLCTV
ADD CONSTRAINT RTP51002  FOREIGN KEY (N_PATTERN_TRANS_ID)
                REFERENCES PTN_ANALYSIS_TRANS  (N_PATTERN_TRANS_ID)
                ON DELETE RESTRICT;



ALTER TABLE MATCHED_CHAR
ADD CONSTRAINT RTP51001  FOREIGN KEY (N_PATTERN_TRANS_ID)
                REFERENCES PTN_ANALYSIS_TRANS  (N_PATTERN_TRANS_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_PTN_A AFTER INSERT ON PTN_ANALYSIS_TRANS
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE PTN_ANALYSIS_TRANS
      SET
        PTN_ANALYSIS_TRANS.N_CLAIM_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIM
            WHERE
              new.N_CLAIM_ID = CLAIM.N_CLAIM_ID
        )
 ;

CREATE TRIGGER tD_PTN_A AFTER DELETE ON PTN_ANALYSIS_TRANS
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM MATCHED_CHAR WHERE MATCHED_CHAR.N_PATTERN_TRANS_ID =
old.N_PATTERN_TRANS_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete PTN_ANALYSIS_TRANS because MATCHED_CHAR exists.');
        END
 ;

CREATE TRIGGER tD_PTN_2 AFTER DELETE ON PTN_ANALYSIS_TRANS
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM MATCHED_COLCTV WHERE MATCHED_COLCTV.N_PATTERN_TRANS_ID =
old.N_PATTERN_TRANS_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete PTN_ANALYSIS_TRANS because MATCHED_COLCTV exists.');
        END
 ;

CREATE TRIGGER tD_PTN_3 AFTER DELETE ON PTN_ANALYSIS_TRANS
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM MATCHED_PATTERN WHERE MATCHED_PATTERN.N_PATTERN_TRANS_ID =
old.N_PATTERN_TRANS_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete PTN_ANALYSIS_TRANS because MATCHED_PATTERN exists.');
        END
 ;


   

CREATE TABLE QC_BASIC_RISK
(
        N_BASIC_RISK_ID       CHAR(16) NOT NULL, 
        N_SCORE_ID            CHAR(16) NOT NULL, 
        T_RISC_INDICATOR      VARCHAR(60) NOT NULL, 
        N_SPSS_ID             CHAR(5) NOT NULL, 
        T_MODEL_NAME          CHAR(32) NOT NULL, 
        T_COMMENT             VARCHAR(60) NOT NULL, 
        N_RISK_POINTS         INTEGER NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP62001 ON QC_BASIC_RISK
(
        N_BASIC_RISK_ID       ASC
);



ALTER TABLE QC_BASIC_RISK
ADD CONSTRAINT XTP62001  PRIMARY KEY (N_BASIC_RISK_ID);



ALTER TABLE QC_BASIC_RISK
ADD CONSTRAINT RTP62101  FOREIGN KEY (N_SCORE_ID)
                REFERENCES QC_SCORE  (N_SCORE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_QC_BA AFTER INSERT ON QC_BASIC_RISK
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM QC_SCORE WHERE new.N_SCORE_ID = QC_SCORE.N_SCORE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert QC_BASIC_RISK because QC_SCORE does not exist.');
        END
 ;


   

CREATE TABLE QC_DM_CLAIM
(
        N_QC_CLAIM_ID         CHAR(13) NOT NULL, 
        N_QC_INSURANCE_ID     CHAR(10) NOT NULL, 
        C_CLAIM_SYSTEM        CHAR(1) NOT NULL, 
        C_LITRA               CHAR(2) NOT NULL, 
        C_CLAIM_TYPE          CHAR(3) NOT NULL, 
        C_CAUSE_1             CHAR(2) NOT NULL, 
        C_CAUSE_2             CHAR(2) NOT NULL, 
        D_INCIDENT_DT         DATE NOT NULL, 
        D_ENTERED_DT          DATE NOT NULL, 
        A_CLAIM_AMT           DECIMAL(11, 2), 
        C_CLAIM_STATUS        CHAR(2) NOT NULL
);



CREATE UNIQUE INDEX XTP47801 ON QC_DM_CLAIM
(
        N_QC_CLAIM_ID         ASC
);



CREATE INDEX XTP47803 ON QC_DM_CLAIM
(
        N_QC_INSURANCE_ID     ASC, 
        C_LITRA               ASC
);



CREATE INDEX XTP47804 ON QC_DM_CLAIM
(
        N_QC_INSURANCE_ID     ASC, 
        D_ENTERED_DT          ASC
)
         CLUSTER;



ALTER TABLE QC_DM_CLAIM
ADD CONSTRAINT XTP47801  PRIMARY KEY (N_QC_CLAIM_ID);



ALTER TABLE QC_DM_CLAIM
ADD CONSTRAINT RTP48001  FOREIGN KEY (N_QC_INSURANCE_ID)
                REFERENCES QC_DM_INSURANCE  (N_QC_INSURANCE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_QC_DM AFTER INSERT ON QC_DM_CLAIM
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE QC_DM_CLAIM
      SET
        QC_DM_CLAIM.N_QC_INSURANCE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM QC_DM_INSURANCE
            WHERE
              new.N_QC_INSURANCE_ID = QC_DM_INSURANCE.N_QC_INSURANCE_ID
        )
 ;


   

CREATE TABLE QC_DM_CLAIM_CPY
(
        N_QC_CLAIM_ID         CHAR(13) NOT NULL, 
        N_QC_INSURANCE_ID     CHAR(10) NOT NULL, 
        C_CLAIM_SYSTEM        CHAR(1) NOT NULL, 
        C_LITRA               CHAR(2) NOT NULL, 
        C_CLAIM_TYPE          CHAR(3) NOT NULL, 
        C_CAUSE_1             CHAR(2) NOT NULL, 
        C_CAUSE_2             CHAR(2) NOT NULL, 
        D_INCIDENT_DT         DATE NOT NULL, 
        D_ENTERED_DT          DATE NOT NULL, 
        A_CLAIM_AMT           DECIMAL(11, 2), 
        C_CLAIM_STATUS        CHAR(2) NOT NULL
);



CREATE UNIQUE INDEX XTP49501 ON QC_DM_CLAIM_CPY
(
        N_QC_CLAIM_ID         ASC
);



ALTER TABLE QC_DM_CLAIM_CPY
ADD CONSTRAINT XTP49501  PRIMARY KEY (N_QC_CLAIM_ID);



ALTER TABLE QC_DM_CLAIM_CPY
ADD CONSTRAINT RTP49801  FOREIGN KEY (N_QC_INSURANCE_ID)
                REFERENCES QC_DM_INSURANCE_CP  (N_QC_INSURANCE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_QC_DM AFTER INSERT ON QC_DM_CLAIM_CPY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE QC_DM_CLAIM_CPY
      SET
        QC_DM_CLAIM_CPY.N_QC_INSURANCE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM QC_DM_INSURANCE_CP
            WHERE
              new.N_QC_INSURANCE_ID = QC_DM_INSURANCE_CP.N_QC_INSURANCE_ID
        )
 ;


   

CREATE TABLE QC_DM_CLIENT
(
        N_QC_CLIENT_ID        CHAR(7) NOT NULL, 
        N_CPR_NR              CHAR(10) NOT NULL, 
        M_STREET_NAME         CHAR(32) NOT NULL, 
        M_STREET_NO           CHAR(9) NOT NULL, 
        M_SUB_CITY_NAME       CHAR(32) NOT NULL, 
        C_POSTAL_CODE         CHAR(9) NOT NULL, 
        M_CITY_NAME           CHAR(32) NOT NULL, 
        C_COUNTRY_CODE        CHAR(3) NOT NULL, 
        C_BLACKCARD_P_IND     CHAR(1) NOT NULL, 
        C_BLACKCARD_H_IND     CHAR(1) NOT NULL, 
        C_FINANCIAL_STATUS    CHAR(2) NOT NULL, 
        C_MARITAL_STATUS      CHAR(1) NOT NULL, 
        C_EMPLOYMNT_STATUS    CHAR(1) NOT NULL, 
        C_OCCUPATION          CHAR(10) NOT NULL, 
        C_GENDER_IND          CHAR(1) NOT NULL, 
        C_DOUBLE_PARTY_IND    CHAR(1) NOT NULL, 
        C_CLIENT_STATUS       CHAR(2) NOT NULL
);



CREATE UNIQUE INDEX XTP47701 ON QC_DM_CLIENT
(
        N_QC_CLIENT_ID        ASC
);



ALTER TABLE QC_DM_CLIENT
ADD CONSTRAINT XTP47701  PRIMARY KEY (N_QC_CLIENT_ID);



ALTER TABLE QC_DM_INSURANCE
ADD CONSTRAINT RTP47701  FOREIGN KEY (N_QC_CLIENT_ID)
                REFERENCES QC_DM_CLIENT  (N_QC_CLIENT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tD_QC_DM AFTER DELETE ON QC_DM_CLIENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM QC_DM_INSURANCE WHERE QC_DM_INSURANCE.N_QC_CLIENT_ID =
old.N_QC_CLIENT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete QC_DM_CLIENT because QC_DM_INSURANCE exists.');
        END
 ;


   

CREATE TABLE QC_DM_CLIENT_CPY
(
        N_QC_CLIENT_ID        CHAR(7) NOT NULL, 
        N_CPR_NR              CHAR(10) NOT NULL, 
        M_STREET_NAME         CHAR(32) NOT NULL, 
        M_STREET_NO           CHAR(9) NOT NULL, 
        M_SUB_CITY_NAME       CHAR(32) NOT NULL, 
        C_POSTAL_CODE         CHAR(9) NOT NULL, 
        M_CITY_NAME           CHAR(32) NOT NULL, 
        C_COUNTRY_CODE        CHAR(3) NOT NULL, 
        C_BLACKCARD_P_IND     CHAR(1) NOT NULL, 
        C_BLACKCARD_H_IND     CHAR(1) NOT NULL, 
        C_FINANCIAL_STATUS    CHAR(2) NOT NULL, 
        C_MARITAL_STATUS      CHAR(1) NOT NULL, 
        C_EMPLOYMNT_STATUS    CHAR(1) NOT NULL, 
        C_OCCUPATION          CHAR(10) NOT NULL, 
        C_GENDER_IND          CHAR(1) NOT NULL, 
        C_DOUBLE_PARTY_IND    CHAR(1) NOT NULL, 
        C_CLIENT_STATUS       CHAR(2) NOT NULL
);



CREATE UNIQUE INDEX XTP49601 ON QC_DM_CLIENT_CPY
(
        N_QC_CLIENT_ID        ASC
);



ALTER TABLE QC_DM_CLIENT_CPY
ADD CONSTRAINT XTP49601  PRIMARY KEY (N_QC_CLIENT_ID);



ALTER TABLE QC_DM_INSURANCE_CP
ADD CONSTRAINT RTP49601  FOREIGN KEY (N_QC_CLIENT_ID)
                REFERENCES QC_DM_CLIENT_CPY  (N_QC_CLIENT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tD_QC_DM AFTER DELETE ON QC_DM_CLIENT_CPY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM QC_DM_INSURANCE_CP WHERE QC_DM_INSURANCE_CP.N_QC_CLIENT_ID =
old.N_QC_CLIENT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete QC_DM_CLIENT_CPY because QC_DM_INSURANCE_CP exists.');

        END
 ;


   

CREATE TABLE QC_DM_COVERAGE
(
        N_QC_COVERAGE_ID      INTEGER NOT NULL, 
        N_QC_INSURANCE_ID     CHAR(10) NOT NULL, 
        D_EFFECTIVE_DT        DATE NOT NULL, 
        D_LAST_CHANGED_DT     DATE NOT NULL, 
        A_DEDUCTIBLE_AMT      DECIMAL(11, 2), 
        C_COVERAGE_STATUS     CHAR(3) NOT NULL
);



CREATE UNIQUE INDEX XTP47901 ON QC_DM_COVERAGE
(
        N_QC_COVERAGE_ID      ASC
);



ALTER TABLE QC_DM_COVERAGE
ADD CONSTRAINT XTP47901  PRIMARY KEY (N_QC_COVERAGE_ID);



ALTER TABLE QC_DM_COVERAGE
ADD CONSTRAINT RTP48002  FOREIGN KEY (N_QC_INSURANCE_ID)
                REFERENCES QC_DM_INSURANCE  (N_QC_INSURANCE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_QC_DM AFTER INSERT ON QC_DM_COVERAGE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE QC_DM_COVERAGE
      SET
        QC_DM_COVERAGE.N_QC_INSURANCE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM QC_DM_INSURANCE
            WHERE
              new.N_QC_INSURANCE_ID = QC_DM_INSURANCE.N_QC_INSURANCE_ID
        )
 ;


   

CREATE TABLE QC_DM_COVERAGE_CPY
(
        N_QC_COVERAGE_ID      INTEGER NOT NULL, 
        N_QC_INSURANCE_ID     CHAR(10) NOT NULL, 
        D_EFFECTIVE_DT        DATE NOT NULL, 
        D_LAST_CHANGED_DT     DATE NOT NULL, 
        A_DEDUCTIBLE_AMT      DECIMAL(11, 2), 
        C_COVERAGE_STATUS     CHAR(3) NOT NULL
);



CREATE UNIQUE INDEX XTP49701 ON QC_DM_COVERAGE_CPY
(
        N_QC_COVERAGE_ID      ASC
);



ALTER TABLE QC_DM_COVERAGE_CPY
ADD CONSTRAINT XTP49701  PRIMARY KEY (N_QC_COVERAGE_ID);



ALTER TABLE QC_DM_COVERAGE_CPY
ADD CONSTRAINT RTP49802  FOREIGN KEY (N_QC_INSURANCE_ID)
                REFERENCES QC_DM_INSURANCE_CP  (N_QC_INSURANCE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_QC_DM AFTER INSERT ON QC_DM_COVERAGE_CPY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE QC_DM_COVERAGE_CPY
      SET
        QC_DM_COVERAGE_CPY.N_QC_INSURANCE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM QC_DM_INSURANCE_CP
            WHERE
              new.N_QC_INSURANCE_ID = QC_DM_INSURANCE_CP.N_QC_INSURANCE_ID
        )
 ;


   

CREATE TABLE QC_DM_INSURANCE
(
        N_QC_INSURANCE_ID     CHAR(10) NOT NULL, 
        N_QC_CLIENT_ID        CHAR(7) NOT NULL, 
        D_EFFECTIVE_DT        DATE NOT NULL, 
        D_LAST_CHANGED_DT     DATE NOT NULL, 
        D_EXPIRE_DT           DATE NOT NULL, 
        C_DUE_MONTH_DAY       CHAR(4) NOT NULL, 
        A_YEARLY_PREMIUM      DECIMAL(11, 2), 
        C_INSURANCE_STATUS    CHAR(3) NOT NULL, 
        C_PAYMENT_IND         CHAR(1) NOT NULL
);



CREATE UNIQUE INDEX XTP48001 ON QC_DM_INSURANCE
(
        N_QC_INSURANCE_ID     ASC
);



ALTER TABLE QC_DM_INSURANCE
ADD CONSTRAINT XTP48001  PRIMARY KEY (N_QC_INSURANCE_ID);



ALTER TABLE QC_DM_INSURANCE
ADD CONSTRAINT RTP47701  FOREIGN KEY (N_QC_CLIENT_ID)
                REFERENCES QC_DM_CLIENT  (N_QC_CLIENT_ID)
                ON DELETE RESTRICT;



ALTER TABLE QC_DM_CLAIM
ADD CONSTRAINT RTP48001  FOREIGN KEY (N_QC_INSURANCE_ID)
                REFERENCES QC_DM_INSURANCE  (N_QC_INSURANCE_ID)
                ON DELETE RESTRICT;



ALTER TABLE QC_DM_COVERAGE
ADD CONSTRAINT RTP48002  FOREIGN KEY (N_QC_INSURANCE_ID)
                REFERENCES QC_DM_INSURANCE  (N_QC_INSURANCE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_QC_DM AFTER INSERT ON QC_DM_INSURANCE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE QC_DM_INSURANCE
      SET
        QC_DM_INSURANCE.N_QC_CLIENT_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM QC_DM_CLIENT
            WHERE
              new.N_QC_CLIENT_ID = QC_DM_CLIENT.N_QC_CLIENT_ID
        )
 ;

CREATE TRIGGER tD_QC_DM AFTER DELETE ON QC_DM_INSURANCE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM QC_DM_COVERAGE WHERE QC_DM_COVERAGE.N_QC_INSURANCE_ID =
old.N_QC_INSURANCE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete QC_DM_INSURANCE because QC_DM_COVERAGE exists.');
        END
 ;

CREATE TRIGGER tD_QC_D2 AFTER DELETE ON QC_DM_INSURANCE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM QC_DM_CLAIM WHERE QC_DM_CLAIM.N_QC_INSURANCE_ID =
old.N_QC_INSURANCE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete QC_DM_INSURANCE because QC_DM_CLAIM exists.');
        END
 ;


   

CREATE TABLE QC_DM_INSURANCE_CP
(
        N_QC_INSURANCE_ID     CHAR(10) NOT NULL, 
        N_QC_CLIENT_ID        CHAR(7) NOT NULL, 
        D_EFFECTIVE_DT        DATE NOT NULL, 
        D_LAST_CHANGED_DT     DATE NOT NULL, 
        D_EXPIRE_DT           DATE NOT NULL, 
        C_DUE_MONTH_DAY       CHAR(4) NOT NULL, 
        A_YEARLY_PREMIUM      DECIMAL(11, 2), 
        C_INSURANCE_STATUS    CHAR(3) NOT NULL, 
        C_PAYMENT_IND         CHAR(1) NOT NULL
);



CREATE UNIQUE INDEX XTP49801 ON QC_DM_INSURANCE_CP
(
        N_QC_INSURANCE_ID     ASC
);



ALTER TABLE QC_DM_INSURANCE_CP
ADD CONSTRAINT XTP49801  PRIMARY KEY (N_QC_INSURANCE_ID);



ALTER TABLE QC_DM_INSURANCE_CP
ADD CONSTRAINT RTP49601  FOREIGN KEY (N_QC_CLIENT_ID)
                REFERENCES QC_DM_CLIENT_CPY  (N_QC_CLIENT_ID)
                ON DELETE RESTRICT;



ALTER TABLE QC_DM_COVERAGE_CPY
ADD CONSTRAINT RTP49802  FOREIGN KEY (N_QC_INSURANCE_ID)
                REFERENCES QC_DM_INSURANCE_CP  (N_QC_INSURANCE_ID)
                ON DELETE RESTRICT;



ALTER TABLE QC_DM_CLAIM_CPY
ADD CONSTRAINT RTP49801  FOREIGN KEY (N_QC_INSURANCE_ID)
                REFERENCES QC_DM_INSURANCE_CP  (N_QC_INSURANCE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_QC_DM AFTER INSERT ON QC_DM_INSURANCE_CP
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE QC_DM_INSURANCE_CP
      SET
        QC_DM_INSURANCE_CP.N_QC_CLIENT_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM QC_DM_CLIENT_CPY
            WHERE
              new.N_QC_CLIENT_ID = QC_DM_CLIENT_CPY.N_QC_CLIENT_ID
        )
 ;

CREATE TRIGGER tD_QC_DM AFTER DELETE ON QC_DM_INSURANCE_CP
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM QC_DM_CLAIM_CPY WHERE QC_DM_CLAIM_CPY.N_QC_INSURANCE_ID =
old.N_QC_INSURANCE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete QC_DM_INSURANCE_CP because QC_DM_CLAIM_CPY exists.');
        END
 ;

CREATE TRIGGER tD_QC_D2 AFTER DELETE ON QC_DM_INSURANCE_CP
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM QC_DM_COVERAGE_CPY WHERE QC_DM_COVERAGE_CPY.N_QC_INSURANCE_ID =
old.N_QC_INSURANCE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete QC_DM_INSURANCE_CP because QC_DM_COVERAGE_CPY
exists.');
        END
 ;


   

CREATE TABLE QC_MEASURE
(
        N_QC_MEASURE_ID       CHAR(16) NOT NULL, 
        N_REGISTRATION_ID     CHAR(16) NOT NULL, 
        C_MEASURE             CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP45101 ON QC_MEASURE
(
        N_QC_MEASURE_ID       ASC
);



ALTER TABLE QC_MEASURE
ADD CONSTRAINT XTP45101  PRIMARY KEY (N_QC_MEASURE_ID);



ALTER TABLE QC_MEASURE
ADD CONSTRAINT RTP45201  FOREIGN KEY (N_REGISTRATION_ID)
                REFERENCES QC_REGISTRATION  (N_REGISTRATION_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_QC_ME AFTER INSERT ON QC_MEASURE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE QC_MEASURE
      SET
        QC_MEASURE.N_REGISTRATION_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM QC_REGISTRATION
            WHERE
              new.N_REGISTRATION_ID = QC_REGISTRATION.N_REGISTRATION_ID
        )
 ;


   

CREATE TABLE QC_PARTICIPANT
(
        N_QC_INS_INVL_ID      CHAR(16) NOT NULL, 
        N_REGISTRATION_ID     CHAR(16) NOT NULL, 
        N_PARTICIPANT_AGE     INTEGER, 
        C_INVESTGTN_STATUS    CHAR(5) NOT NULL, 
        C_INVESTGTN_RESULT    CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP60001 ON QC_PARTICIPANT
(
        N_QC_INS_INVL_ID      ASC
);



CREATE UNIQUE INDEX XTP60004 ON QC_PARTICIPANT
(
        N_QC_INS_INVL_ID      ASC, 
        C_RCD_DEL             ASC, 
        C_INVESTGTN_RESULT    ASC
);



ALTER TABLE QC_PARTICIPANT
ADD CONSTRAINT XTP60001  PRIMARY KEY (N_QC_INS_INVL_ID);



ALTER TABLE QC_PARTICIPANT
ADD CONSTRAINT RTP28315  FOREIGN KEY (N_QC_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE QC_PARTICIPANT
ADD CONSTRAINT RTP45202  FOREIGN KEY (N_REGISTRATION_ID)
                REFERENCES QC_REGISTRATION  (N_REGISTRATION_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_QC_PA AFTER INSERT ON QC_PARTICIPANT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE QC_PARTICIPANT
      SET
        QC_PARTICIPANT.N_REGISTRATION_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM QC_REGISTRATION
            WHERE
              new.N_REGISTRATION_ID = QC_REGISTRATION.N_REGISTRATION_ID
        )
 ;

CREATE TRIGGER tI_QC_P2 AFTER INSERT ON QC_PARTICIPANT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INS_INVOLVEMENT WHERE new.N_QC_INS_INVL_ID =
INS_INVOLVEMENT.N_INS_INVL_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert QC_PARTICIPANT because INS_INVOLVEMENT does not
exist.');
        END
 ;


   

CREATE TABLE QC_REGISTRATION
(
        N_REGISTRATION_ID     CHAR(16) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        C_STATUS              CHAR(5) NOT NULL, 
        D_START_DATE          TIMESTAMP NOT NULL, 
        D_END_DATE            TIMESTAMP NOT NULL, 
        C_CONSEQUENCE         CHAR(5) NOT NULL, 
        C_QC_CATEGORY         CHAR(5) NOT NULL, 
        C_LEGAL_ACTION        CHAR(5) NOT NULL, 
        A_SAVINGS_AMT         DECIMAL(19, 6), 
        C_SAVINGS_UOM         CHAR(5) NOT NULL, 
        C_RECOM_PRUNE_IND     CHAR(1) NOT NULL, 
        C_INVESTIGATOR        CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        T_OTHER_REASON        VARCHAR(100) NOT NULL, 
        C_SUSPICION_REASON    CHAR(5) NOT NULL, 
        A_ACTUAL_AMT          DECIMAL(19, 6), 
        C_ACTUAL_UOM          CHAR(5) NOT NULL
);



CREATE UNIQUE INDEX XTP45201 ON QC_REGISTRATION
(
        N_REGISTRATION_ID     ASC
);



ALTER TABLE QC_REGISTRATION
ADD CONSTRAINT XTP45201  PRIMARY KEY (N_REGISTRATION_ID);



ALTER TABLE QC_REGISTRATION
ADD CONSTRAINT RTP22228  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



ALTER TABLE QC_MEASURE
ADD CONSTRAINT RTP45201  FOREIGN KEY (N_REGISTRATION_ID)
                REFERENCES QC_REGISTRATION  (N_REGISTRATION_ID)
                ON DELETE RESTRICT;



ALTER TABLE QC_PARTICIPANT
ADD CONSTRAINT RTP45202  FOREIGN KEY (N_REGISTRATION_ID)
                REFERENCES QC_REGISTRATION  (N_REGISTRATION_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_QC_RE AFTER INSERT ON QC_REGISTRATION
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE QC_REGISTRATION
      SET
        QC_REGISTRATION.N_CLAIM_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIM
            WHERE
              new.N_CLAIM_ID = CLAIM.N_CLAIM_ID
        )
 ;

CREATE TRIGGER tD_QC_RE AFTER DELETE ON QC_REGISTRATION
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM QC_PARTICIPANT WHERE QC_PARTICIPANT.N_REGISTRATION_ID =
old.N_REGISTRATION_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete QC_REGISTRATION because QC_PARTICIPANT exists.');
        END
 ;

CREATE TRIGGER tD_QC_R2 AFTER DELETE ON QC_REGISTRATION
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM QC_MEASURE WHERE QC_MEASURE.N_REGISTRATION_ID =
old.N_REGISTRATION_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete QC_REGISTRATION because QC_MEASURE exists.');
        END
 ;


   

CREATE TABLE QC_SCORE
(
        N_SCORE_ID            CHAR(16) NOT NULL, 
        D_SCORE_DT            TIMESTAMP NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        N_POLICY_ID           CHAR(16) NOT NULL, 
        N_CUSTOMER_NUMBER     CHAR(7) NOT NULL, 
        C_OVRAL_RISK_SCORE    CHAR(5) NOT NULL, 
        C_BASIC_RISK_SCORE    CHAR(5) NOT NULL, 
        N_BASIC_RISK_POINT    INTEGER NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP62101 ON QC_SCORE
(
        N_SCORE_ID            ASC
);



ALTER TABLE QC_SCORE
ADD CONSTRAINT XTP62101  PRIMARY KEY (N_SCORE_ID);



ALTER TABLE QC_SCORE
ADD CONSTRAINT RTP22230  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



ALTER TABLE QC_SCORE
ADD CONSTRAINT RTP32907  FOREIGN KEY (N_POLICY_ID)
                REFERENCES POLICY  (N_POLICY_ID)
                ON DELETE RESTRICT;



ALTER TABLE QC_BASIC_RISK
ADD CONSTRAINT RTP62101  FOREIGN KEY (N_SCORE_ID)
                REFERENCES QC_SCORE  (N_SCORE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_QC_SC AFTER INSERT ON QC_SCORE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE QC_SCORE
      SET
        QC_SCORE.N_POLICY_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM POLICY
            WHERE
              new.N_POLICY_ID = POLICY.N_POLICY_ID
        )
 ;

CREATE TRIGGER tI_QC_S2 AFTER INSERT ON QC_SCORE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE QC_SCORE
      SET
        QC_SCORE.N_CLAIM_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIM
            WHERE
              new.N_CLAIM_ID = CLAIM.N_CLAIM_ID
        )
 ;

CREATE TRIGGER tD_QC_SC AFTER DELETE ON QC_SCORE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM QC_BASIC_RISK WHERE QC_BASIC_RISK.N_SCORE_ID = old.N_SCORE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete QC_SCORE because QC_BASIC_RISK exists.');
        END
 ;


   

CREATE TABLE QUES_PRES
(
        N_QUES_PRES_ID        CHAR(16) NOT NULL, 
        N_CONVERSATION_ID     CHAR(16) NOT NULL, 
        N_CONV_RULE_ID        CHAR(16) NOT NULL, 
        N_NODE_ID             CHAR(16) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL
);



CREATE UNIQUE INDEX XTP33301 ON QUES_PRES
(
        N_QUES_PRES_ID        ASC
);



CREATE INDEX XTP33302 ON QUES_PRES
(
        N_CONVERSATION_ID     ASC, 
        N_CONV_RULE_ID        ASC, 
        N_NODE_ID             ASC
)
         CLUSTER;



CREATE INDEX XTP33304 ON QUES_PRES
(
        N_CONV_RULE_ID        ASC, 
        N_CONVERSATION_ID     ASC, 
        N_NODE_ID             ASC
);



ALTER TABLE QUES_PRES
ADD CONSTRAINT XTP33301  PRIMARY KEY (N_QUES_PRES_ID);



ALTER TABLE QUES_PRES
ADD CONSTRAINT RTP24703  FOREIGN KEY (N_CONVERSATION_ID)
                REFERENCES CONVERSATION  (N_CONVERSATION_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_QUES_ AFTER INSERT ON QUES_PRES
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM CONVERSATION WHERE new.N_CONVERSATION_ID =
CONVERSATION.N_CONVERSATION_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert QUES_PRES because CONVERSATION does not exist.');
        END
 ;

CREATE TRIGGER tU_QUES_ AFTER UPDATE ON QUES_PRES
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM CONVERSATION WHERE new.N_CONVERSATION_ID =
CONVERSATION.N_CONVERSATION_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update QUES_PRES because CONVERSATION does not exist.');
        END
 ;


   

CREATE TABLE RCOVRY_NEGOTIATION
(
        N_RCOVRY_NEG_ID       CHAR(16) NOT NULL, 
        N_FEE_ARNGT           INTEGER, 
        N_NEGOTIATION_ID      CHAR(16) NOT NULL, 
        Q_RESTITUTION_VAL     DECIMAL(19, 6), 
        N_INS_INVL_ID         CHAR(16) NOT NULL, 
        C_RESTITUTION_UOM     CHAR(5) NOT NULL, 
        C_REST_FREQ_CODE      CHAR(5) NOT NULL, 
        D_POTENTIAL_RCOVRY    TIMESTAMP NOT NULL, 
        Q_REST_TOTAL_VAL      DECIMAL(19, 6), 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        C_REST_TOTAL_UOM      CHAR(5) NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        Q_FEE_COST            DECIMAL(19, 6), 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        N_REST_DURATION       INTEGER, 
        D_DATE_ESTAB          TIMESTAMP NOT NULL, 
        C_FEE_UOM             CHAR(5) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_STATUS              CHAR(5), 
        C_PROBABILITY         CHAR(5)
);



CREATE UNIQUE INDEX XTP33501 ON RCOVRY_NEGOTIATION
(
        N_RCOVRY_NEG_ID       ASC
);



ALTER TABLE RCOVRY_NEGOTIATION
ADD CONSTRAINT XTP33501  PRIMARY KEY (N_RCOVRY_NEG_ID);



ALTER TABLE RCOVRY_NEGOTIATION
ADD CONSTRAINT RTP30904  FOREIGN KEY (N_NEGOTIATION_ID)
                REFERENCES NEGOTIATION  (N_NEGOTIATION_ID)
                ON DELETE RESTRICT;



ALTER TABLE RCOVRY_NEGOTIATION
ADD CONSTRAINT RTP28311  FOREIGN KEY (N_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_RCOVR AFTER INSERT ON RCOVRY_NEGOTIATION
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INS_INVOLVEMENT WHERE new.N_INS_INVL_ID =
INS_INVOLVEMENT.N_INS_INVL_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert RCOVRY_NEGOTIATION because INS_INVOLVEMENT does not
exist.');
        END
 ;

CREATE TRIGGER tI_RCOV2 AFTER INSERT ON RCOVRY_NEGOTIATION
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM NEGOTIATION WHERE new.N_NEGOTIATION_ID =
NEGOTIATION.N_NEGOTIATION_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert RCOVRY_NEGOTIATION because NEGOTIATION does not
exist.');
        END
 ;

CREATE TRIGGER tU_RCOVR AFTER UPDATE ON RCOVRY_NEGOTIATION
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM INS_INVOLVEMENT WHERE new.N_INS_INVL_ID =
INS_INVOLVEMENT.N_INS_INVL_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update RCOVRY_NEGOTIATION because INS_INVOLVEMENT does not
exist.');
        END
 ;

CREATE TRIGGER tU_RCOV2 AFTER UPDATE ON RCOVRY_NEGOTIATION
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM NEGOTIATION WHERE new.N_NEGOTIATION_ID =
NEGOTIATION.N_NEGOTIATION_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update RCOVRY_NEGOTIATION because NEGOTIATION does not
exist.');
        END
 ;


   

CREATE TABLE RECEIPT
(
        N_RCPT_ID             CHAR(16) NOT NULL, 
        N_CUSTOMER_NUMBER     CHAR(7) NOT NULL, 
        N_RCPT_CHK_NBR        CHAR(13) NOT NULL, 
        D_RCVD_DT             TIMESTAMP NOT NULL, 
        N_BATCH_NBR           INTEGER, 
        D_BATCH_DT            TIMESTAMP NOT NULL, 
        N_PRFMR_ORG_ENTY      CHAR(16) NOT NULL, 
        C_RCPT_CHK_UOM        CHAR(5) NOT NULL, 
        C_RCPT_METHOD         CHAR(5) NOT NULL, 
        T_COMMENTS            CHAR(254) NOT NULL, 
        A_RCPT_CHK            DECIMAL(19, 6), 
        N_OUT_INVOICE_ID      CHAR(16) NOT NULL, 
        C_REVERSE_IND         CHAR(1) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_RECEIPT_GROUP_ID    CHAR(16) DEFAULT '', 
        C_INV_FIN_ENT_ST      CHAR(5) NOT NULL DEFAULT '', 
        C_INV_FIN_TX_GP_ST    CHAR(5) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP33601 ON RECEIPT
(
        N_RCPT_ID             ASC
);



CREATE INDEX XTP33602 ON RECEIPT
(
        N_BATCH_NBR           ASC
);



CREATE INDEX XTP33605 ON RECEIPT
(
        N_CUSTOMER_NUMBER     ASC
);



ALTER TABLE RECEIPT
ADD CONSTRAINT XTP33601  PRIMARY KEY (N_RCPT_ID);



ALTER TABLE RECEIPT
ADD CONSTRAINT RTP27406  FOREIGN KEY (N_RCPT_ID)
                REFERENCES FINANCIAL_ENTITY  (N_FIN_ENT_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECEIPT
ADD CONSTRAINT RTP44702  FOREIGN KEY (N_OUT_INVOICE_ID)
                REFERENCES OUT_INVOICE  (N_OUT_INVOICE_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECEIPT
ADD CONSTRAINT RTP31313  FOREIGN KEY (N_PRFMR_ORG_ENTY)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECEIPT
ADD CONSTRAINT RTP33201  FOREIGN KEY (N_RECEIPT_GROUP_ID)
                REFERENCES RECEIPT_GROUP  (N_RECEIPT_GROUP_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECEIPT_DTL
ADD CONSTRAINT RTP33601  FOREIGN KEY (N_RCPT_ID)
                REFERENCES RECEIPT  (N_RCPT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_RECEI AFTER INSERT ON RECEIPT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE RECEIPT
      SET
        RECEIPT.N_RECEIPT_GROUP_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM RECEIPT_GROUP
            WHERE
              new.N_RECEIPT_GROUP_ID = RECEIPT_GROUP.N_RECEIPT_GROUP_ID
        )
 ;

CREATE TRIGGER tI_RECE2 AFTER INSERT ON RECEIPT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE RECEIPT
      SET
        RECEIPT.N_PRFMR_ORG_ENTY = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ORG_ENTITY
            WHERE
              new.N_PRFMR_ORG_ENTY = ORG_ENTITY.N_ORG_ENTY_ID
        )
 ;

CREATE TRIGGER tI_RECE3 AFTER INSERT ON RECEIPT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE RECEIPT
      SET
        RECEIPT.N_OUT_INVOICE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM OUT_INVOICE
            WHERE
              new.N_OUT_INVOICE_ID = OUT_INVOICE.N_OUT_INVOICE_ID
        )
 ;

CREATE TRIGGER tI_RECE4 AFTER INSERT ON RECEIPT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM FINANCIAL_ENTITY WHERE new.N_RCPT_ID =
FINANCIAL_ENTITY.N_FIN_ENT_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert RECEIPT because FINANCIAL_ENTITY does not exist.');
        END
 ;

CREATE TRIGGER tD_RECEI AFTER DELETE ON RECEIPT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECEIPT_DTL WHERE RECEIPT_DTL.N_RCPT_ID = old.N_RCPT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete RECEIPT because RECEIPT_DTL exists.');
        END
 ;


   

CREATE TABLE RECEIPT_DTL
(
        N_RCPT_DTL_ID         CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        N_RCPT_ID             CHAR(16) NOT NULL, 
        C_SERVICE             CHAR(5) NOT NULL, 
        D_SRVC_START_DT       TIMESTAMP NOT NULL, 
        D_SRVC_END_DT         TIMESTAMP NOT NULL, 
        A_RCPT_AMT            DECIMAL(19, 6), 
        C_FIN_CTGY            CHAR(5) NOT NULL, 
        C_RCPT_MODE           CHAR(5) NOT NULL, 
        C_RCPT_MODE_RSN       CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_COST_IND            CHAR(1) NOT NULL DEFAULT 'N'
);



CREATE UNIQUE INDEX XTP33701 ON RECEIPT_DTL
(
        N_RCPT_DTL_ID         ASC
);



ALTER TABLE RECEIPT_DTL
ADD CONSTRAINT XTP33701  PRIMARY KEY (N_RCPT_DTL_ID);



ALTER TABLE RECEIPT_DTL
ADD CONSTRAINT RTP30022  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECEIPT_DTL
ADD CONSTRAINT RTP33601  FOREIGN KEY (N_RCPT_ID)
                REFERENCES RECEIPT  (N_RCPT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_RECEI AFTER INSERT ON RECEIPT_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM LINE WHERE new.N_LINE_ID = LINE.N_LINE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert RECEIPT_DTL because LINE does not exist.');
        END
 ;

CREATE TRIGGER tI_RECE2 AFTER INSERT ON RECEIPT_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM RECEIPT WHERE new.N_RCPT_ID = RECEIPT.N_RCPT_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert RECEIPT_DTL because RECEIPT does not exist.');
        END
 ;

CREATE TRIGGER tU_RECEI AFTER UPDATE ON RECEIPT_DTL
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM LINE WHERE new.N_LINE_ID = LINE.N_LINE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update RECEIPT_DTL because LINE does not exist.');
        END
 ;


   

CREATE TABLE RECEIPT_GROUP
(
        N_RECEIPT_GROUP_ID    CHAR(16) NOT NULL, 
        C_GROUP_STATUS        CHAR(5) NOT NULL DEFAULT '', 
        A_TARGET_TOTAL_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_TARGET_TOTAL_UOM    CHAR(5) NOT NULL DEFAULT '', 
        N_RECEIPT_GRP_NO      CHAR(9) NOT NULL DEFAULT '', 
        D_SUBMITTED_TS        TIMESTAMP NOT NULL, 
        N_SUBMITTED_BY_ID     CHAR(16) DEFAULT '', 
        C_RECEIPT_METHOD      CHAR(5) NOT NULL DEFAULT '', 
        N_CREATED_BY_ID       CHAR(16) DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0
);



CREATE UNIQUE INDEX XTP33201 ON RECEIPT_GROUP
(
        N_RECEIPT_GROUP_ID    ASC
);



CREATE UNIQUE INDEX XTP33202 ON RECEIPT_GROUP
(
        N_RECEIPT_GRP_NO      ASC
)
         CLUSTER;



CREATE INDEX XTP33203 ON RECEIPT_GROUP
(
        N_SUBMITTED_BY_ID     ASC
);



ALTER TABLE RECEIPT_GROUP
ADD CONSTRAINT XTP33201  PRIMARY KEY (N_RECEIPT_GROUP_ID);



ALTER TABLE RECEIPT_GROUP
ADD CONSTRAINT RTP31339  FOREIGN KEY (N_CREATED_BY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECEIPT
ADD CONSTRAINT RTP33201  FOREIGN KEY (N_RECEIPT_GROUP_ID)
                REFERENCES RECEIPT_GROUP  (N_RECEIPT_GROUP_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_RECEI AFTER INSERT ON RECEIPT_GROUP
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE RECEIPT_GROUP
      SET
        RECEIPT_GROUP.N_CREATED_BY_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ORG_ENTITY
            WHERE
              new.N_CREATED_BY_ID = ORG_ENTITY.N_ORG_ENTY_ID
        )
 ;

CREATE TRIGGER tI_RECE2 AFTER INSERT ON RECEIPT_GROUP
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE RECEIPT_GROUP
      SET
        RECEIPT_GROUP.N_SUBMITTED_BY_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ORG_ENTITY
            WHERE
              new.N_SUBMITTED_BY_ID = ORG_ENTITY.N_ORG_ENTY_ID
        )
 ;

CREATE TRIGGER tD_RECEI AFTER DELETE ON RECEIPT_GROUP
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECEIPT WHERE RECEIPT.N_RECEIPT_GROUP_ID =
old.N_RECEIPT_GROUP_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete RECEIPT_GROUP because RECEIPT exists.');
        END
 ;


   

CREATE TABLE RECOURSE_CORRESPON
(
        N_RECOURSE_CORR_ID    CHAR(16) NOT NULL, 
        N_CLAIM_ID            CHAR(16), 
        N_OPP_INS_COMP_ID     CHAR(16), 
        N_OPPOSITE_PART_ID    CHAR(16), 
        N_LAST_REC_MESS_ID    CHAR(16), 
        C_TD_ACCIDENT_TYPE    CHAR(5) NOT NULL DEFAULT '', 
        C_SEND_GUILD_DISTR    CHAR(5) NOT NULL DEFAULT '', 
        C_AGREEMENT_IND       CHAR(1) NOT NULL DEFAULT '', 
        N_NUM_OF_MESSAGES     INTEGER NOT NULL DEFAULT 0, 
        T_LOCATION_OF_LOSS    VARCHAR(70) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          VARCHAR(20) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP34201 ON RECOURSE_CORRESPON
(
        N_RECOURSE_CORR_ID    ASC
);



CREATE INDEX XTP34202 ON RECOURSE_CORRESPON
(
        N_LAST_REC_MESS_ID    ASC
);



CREATE INDEX XTP34204 ON RECOURSE_CORRESPON
(
        N_OPP_INS_COMP_ID     ASC
);



ALTER TABLE RECOURSE_CORRESPON
ADD CONSTRAINT XTP34201  PRIMARY KEY (N_RECOURSE_CORR_ID);



ALTER TABLE RECOURSE_CORRESPON
ADD CONSTRAINT RTP22233  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECOURSE_CORRESPON
ADD CONSTRAINT RTP28912  FOREIGN KEY (N_OPPOSITE_PART_ID)
                REFERENCES INVOLVEMENT_ROLE  (N_INVL_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECOURSE_MESSAGE
ADD CONSTRAINT RTP34201  FOREIGN KEY (N_RECOURSE_CORR_ID)
                REFERENCES RECOURSE_CORRESPON  (N_RECOURSE_CORR_ID)
                ON DELETE RESTRICT;



ALTER TABLE FINANCIAL_ENTITY
ADD CONSTRAINT RTP34202  FOREIGN KEY (N_RECOURSE_CORR_ID)
                REFERENCES RECOURSE_CORRESPON  (N_RECOURSE_CORR_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_RECOU AFTER INSERT ON RECOURSE_CORRESPON
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE RECOURSE_CORRESPON
      SET
        RECOURSE_CORRESPON.N_OPPOSITE_PART_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INVOLVEMENT_ROLE
            WHERE
              new.N_OPPOSITE_PART_ID = INVOLVEMENT_ROLE.N_INVL_ROLE_ID
        )
 ;

CREATE TRIGGER tI_RECO2 AFTER INSERT ON RECOURSE_CORRESPON
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE RECOURSE_CORRESPON
      SET
        RECOURSE_CORRESPON.N_OPP_INS_COMP_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INVOLVEMENT_ROLE
            WHERE
              new.N_OPP_INS_COMP_ID = INVOLVEMENT_ROLE.N_INVL_ROLE_ID
        )
 ;

CREATE TRIGGER tI_RECO3 AFTER INSERT ON RECOURSE_CORRESPON
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE RECOURSE_CORRESPON
      SET
        RECOURSE_CORRESPON.N_CLAIM_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIM
            WHERE
              new.N_CLAIM_ID = CLAIM.N_CLAIM_ID
        )
 ;

CREATE TRIGGER tI_RECO4 AFTER INSERT ON RECOURSE_CORRESPON
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM RECOURSE_MESSAGE WHERE new.N_LAST_REC_MESS_ID =
RECOURSE_MESSAGE.N_RECOURSE_MESS_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert RECOURSE_CORRESPON because RECOURSE_MESSAGE does not
exist.');
        END
 ;

CREATE TRIGGER tD_RECOU AFTER DELETE ON RECOURSE_CORRESPON
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM FINANCIAL_ENTITY WHERE FINANCIAL_ENTITY.N_RECOURSE_CORR_ID =
old.N_RECOURSE_CORR_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete RECOURSE_CORRESPON because FINANCIAL_ENTITY exists.');

        END
 ;

CREATE TRIGGER tD_RECO2 AFTER DELETE ON RECOURSE_CORRESPON
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECOURSE_MESSAGE WHERE RECOURSE_MESSAGE.N_RECOURSE_CORR_ID =
old.N_RECOURSE_CORR_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete RECOURSE_CORRESPON because RECOURSE_MESSAGE exists.');

        END
 ;


   

CREATE TABLE RECOURSE_DOCUMENT
(
        N_RECOURSE_DOC_ID     CHAR(16) NOT NULL, 
        C_F_CLAIM_NOTE_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_R_CLAIM_NOTE_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_F_INVOICE_IND       CHAR(1) NOT NULL DEFAULT 'N', 
        C_R_INVOICE_IND       CHAR(1) NOT NULL DEFAULT 'N', 
        C_F_WITN_STMNT_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_R_WITN_STMNT_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_F_MISCELLANS_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_R_MISCELLANS_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_F_POLICE_REP_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_R_POLICE_REP_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_F_MEDI_CERTF_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_R_MEDI_CERTF_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_F_ASSESS_REP_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_R_ASSESS_REP_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_F_PRINT_JUST_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        C_R_PRINT_JUST_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP34101 ON RECOURSE_DOCUMENT
(
        N_RECOURSE_DOC_ID     ASC
)
         CLUSTER;



ALTER TABLE RECOURSE_DOCUMENT
ADD CONSTRAINT XTP34101  PRIMARY KEY (N_RECOURSE_DOC_ID);



ALTER TABLE RECOURSE_DOCUMENT
ADD CONSTRAINT RTP34004  FOREIGN KEY (N_RECOURSE_DOC_ID)
                REFERENCES RECOURSE_MESSAGE  (N_RECOURSE_MESS_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_RECOU AFTER INSERT ON RECOURSE_DOCUMENT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM RECOURSE_MESSAGE WHERE new.N_RECOURSE_DOC_ID =
RECOURSE_MESSAGE.N_RECOURSE_MESS_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert RECOURSE_DOCUMENT because RECOURSE_MESSAGE does not
exist.');
        END
 ;


   

CREATE TABLE RECOURSE_MESSAGE
(
        N_RECOURSE_MESS_ID    CHAR(16) NOT NULL, 
        N_RECOURSE_CORR_ID    CHAR(16), 
        N_CLAIM_ID            CHAR(16), 
        N_TASK_ID             CHAR(16), 
        N_OPP_NAME_ADDR_ID    CHAR(16), 
        N_TDK_NAME_ADDR_ID    CHAR(16), 
        N_DAMAGE_ZONES_ID     CHAR(16), 
        D_CREATE_DATE         TIMESTAMP NOT NULL, 
        C_RECOURSE_STATUS     CHAR(5) NOT NULL, 
        C_MES_HANDLE_STATE    VARCHAR(20) NOT NULL DEFAULT '', 
        C_CLEAR_CHECK_IND     CHAR(1) NOT NULL DEFAULT '', 
        N_MESSAGE_NO          INTEGER NOT NULL DEFAULT 0, 
        C_ACCIDENT_TYPE       CHAR(5) NOT NULL DEFAULT '', 
        C_SEND_GUILD_DISTR    CHAR(5) NOT NULL DEFAULT '', 
        N_OPP_CLAIM_NUMBER    CHAR(35) NOT NULL DEFAULT '', 
        N_RECEIVER_GTI        CHAR(7) NOT NULL DEFAULT '', 
        N_SENDER_GTI          CHAR(7) NOT NULL DEFAULT '', 
        C_RECOURSE_CODE       CHAR(5) NOT NULL DEFAULT '', 
        C_RECOURS_MEET_IND    CHAR(1) NOT NULL DEFAULT '', 
        C_PERS_DEMAND_IND     CHAR(1) NOT NULL DEFAULT '', 
        C_LARGE_CLAIM_IND     VARCHAR(20) NOT NULL DEFAULT '', 
        T_REMARKS             VARCHAR(700) NOT NULL DEFAULT '', 
        M_HANDLER_NAME        VARCHAR(35) NOT NULL DEFAULT '', 
        N_HAN_CONTACT_INFO    VARCHAR(25) NOT NULL DEFAULT '', 
        C_ACCIDENT_TYP_APP    CHAR(5) NOT NULL DEFAULT '', 
        D_DATE_OF_LOSS        TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        M_LOCATION_OF_LOSS    VARCHAR(70) NOT NULL DEFAULT '', 
        A_TOTAL_CLAIM_AMT     NUMERIC(19, 6), 
        C_TOTAL_CLAIM_UOM     CHAR(5) NOT NULL DEFAULT '', 
        A_CAR_REM_SOLD_AMT    NUMERIC(19, 6), 
        C_CAR_REM_SOLD_UOM    CHAR(5) NOT NULL DEFAULT '', 
        A_TRANSPORT_AMT       NUMERIC(19, 6), 
        C_TRANSPORT_UOM       CHAR(5) NOT NULL DEFAULT '', 
        A_MISCELLANEOS_AMT    NUMERIC(19, 6), 
        C_MISCELLANEOS_UOM    CHAR(5) NOT NULL DEFAULT '', 
        A_CLAIM_DEMAND_AMT    NUMERIC(19, 6), 
        C_CLAIM_DEMAND_UOM    CHAR(5) NOT NULL DEFAULT '', 
        A_PAY_AMT             NUMERIC(19, 6), 
        C_PAY_UOM             CHAR(5) NOT NULL DEFAULT '', 
        A_PCT_VAT_PCT         NUMERIC(5, 2), 
        N_OPP_PARTY_EDI_NO    VARCHAR(35) NOT NULL DEFAULT '', 
        N_OPP_PARTY_REG_NO    VARCHAR(35) NOT NULL DEFAULT '', 
        N_TOPDK_EDI_NO        CHAR(16) NOT NULL DEFAULT '', 
        N_TDK_INS_REG_NO      VARCHAR(35) NOT NULL DEFAULT '', 
        N_ASSESSOR_RPT1_NO    VARCHAR(35) NOT NULL DEFAULT '', 
        N_ASSESSOR_RPT2_NO    VARCHAR(35) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_TDK_POLICY_NO       VARCHAR(35) NOT NULL DEFAULT '', 
        N_OPP_POLICY_NO       VARCHAR(35) NOT NULL DEFAULT '', 
        A_PLATE_AMT           DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_PLATE_UOM           CHAR(5) NOT NULL DEFAULT 'DKK'
);



CREATE UNIQUE INDEX XTP34001 ON RECOURSE_MESSAGE
(
        N_RECOURSE_MESS_ID    ASC
)
         CLUSTER;



CREATE INDEX XTP34008 ON RECOURSE_MESSAGE
(
        C_RECOURSE_CODE       ASC, 
        C_MES_HANDLE_STATE    ASC, 
        C_CLEAR_CHECK_IND     ASC
);



CREATE INDEX XTP34005 ON RECOURSE_MESSAGE
(
        N_OPP_NAME_ADDR_ID    ASC
);



CREATE INDEX XTP34009 ON RECOURSE_MESSAGE
(
        N_OPP_PARTY_EDI_NO    ASC, 
        D_CREATE_DATE         DESC
);



CREATE INDEX XTP34010 ON RECOURSE_MESSAGE
(
        N_TOPDK_EDI_NO        ASC, 
        C_MES_HANDLE_STATE    ASC
);



ALTER TABLE RECOURSE_MESSAGE
ADD CONSTRAINT XTP34001  PRIMARY KEY (N_RECOURSE_MESS_ID);



ALTER TABLE RECOURSE_MESSAGE
ADD CONSTRAINT RTP22232  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECOURSE_MESSAGE
ADD CONSTRAINT RTP21904  FOREIGN KEY (N_TASK_ID)
                REFERENCES CCS_TASK  (N_TASK_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECOURSE_MESSAGE
ADD CONSTRAINT RTP38302  FOREIGN KEY (N_DAMAGE_ZONES_ID)
                REFERENCES DAMAGE_ZONE_SET  (N_DAMAGE_ZONES_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECOURSE_MESSAGE
ADD CONSTRAINT RTP34201  FOREIGN KEY (N_RECOURSE_CORR_ID)
                REFERENCES RECOURSE_CORRESPON  (N_RECOURSE_CORR_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECOURSE_MESSAGE
ADD CONSTRAINT RTP34302  FOREIGN KEY (N_TDK_NAME_ADDR_ID)
                REFERENCES NAME_ADDRESS  (N_NAME_ADDRESS_ID)
                ON DELETE RESTRICT;



ALTER TABLE RECOURSE_DOCUMENT
ADD CONSTRAINT RTP34004  FOREIGN KEY (N_RECOURSE_DOC_ID)
                REFERENCES RECOURSE_MESSAGE  (N_RECOURSE_MESS_ID)
                ON DELETE RESTRICT;



ALTER TABLE PAYMENT_DTL
ADD CONSTRAINT RTP34002  FOREIGN KEY (N_RECOURSE_MESS_ID)
                REFERENCES RECOURSE_MESSAGE  (N_RECOURSE_MESS_ID)
                ON DELETE RESTRICT;



ALTER TABLE OUT_INVOICE_DTL
ADD CONSTRAINT RTP34003  FOREIGN KEY (N_RECOURSE_MESS_ID)
                REFERENCES RECOURSE_MESSAGE  (N_RECOURSE_MESS_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_RECOU AFTER INSERT ON RECOURSE_MESSAGE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE RECOURSE_MESSAGE
      SET
        RECOURSE_MESSAGE.N_TDK_NAME_ADDR_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM NAME_ADDRESS
            WHERE
              new.N_TDK_NAME_ADDR_ID = NAME_ADDRESS.N_NAME_ADDRESS_ID
        )
 ;

CREATE TRIGGER tI_RECO2 AFTER INSERT ON RECOURSE_MESSAGE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE RECOURSE_MESSAGE
      SET
        RECOURSE_MESSAGE.N_RECOURSE_CORR_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM RECOURSE_CORRESPON
            WHERE
              new.N_RECOURSE_CORR_ID = RECOURSE_CORRESPON.N_RECOURSE_CORR_ID
        )
 ;

CREATE TRIGGER tI_RECO3 AFTER INSERT ON RECOURSE_MESSAGE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE RECOURSE_MESSAGE
      SET
        RECOURSE_MESSAGE.N_OPP_NAME_ADDR_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM NAME_ADDRESS
            WHERE
              new.N_OPP_NAME_ADDR_ID = NAME_ADDRESS.N_NAME_ADDRESS_ID
        )
 ;

CREATE TRIGGER tI_RECO4 AFTER INSERT ON RECOURSE_MESSAGE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM DAMAGE_ZONE_SET WHERE new.N_DAMAGE_ZONES_ID =
DAMAGE_ZONE_SET.N_DAMAGE_ZONES_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert RECOURSE_MESSAGE because DAMAGE_ZONE_SET does not
exist.');
        END
 ;

CREATE TRIGGER tI_RECO5 AFTER INSERT ON RECOURSE_MESSAGE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE RECOURSE_MESSAGE
      SET
        RECOURSE_MESSAGE.N_TASK_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CCS_TASK
            WHERE
              new.N_TASK_ID = CCS_TASK.N_TASK_ID
        )
 ;

CREATE TRIGGER tI_RECO6 AFTER INSERT ON RECOURSE_MESSAGE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE RECOURSE_MESSAGE
      SET
        RECOURSE_MESSAGE.N_CLAIM_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIM
            WHERE
              new.N_CLAIM_ID = CLAIM.N_CLAIM_ID
        )
 ;

CREATE TRIGGER tD_RECOU AFTER DELETE ON RECOURSE_MESSAGE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM OUT_INVOICE_DTL WHERE OUT_INVOICE_DTL.N_RECOURSE_MESS_ID =
old.N_RECOURSE_MESS_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete RECOURSE_MESSAGE because OUT_INVOICE_DTL exists.');
        END
 ;

CREATE TRIGGER tD_RECO2 AFTER DELETE ON RECOURSE_MESSAGE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PAYMENT_DTL WHERE PAYMENT_DTL.N_RECOURSE_MESS_ID =
old.N_RECOURSE_MESS_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete RECOURSE_MESSAGE because PAYMENT_DTL exists.');
        END
 ;

CREATE TRIGGER tD_RECO3 AFTER DELETE ON RECOURSE_MESSAGE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECOURSE_CORRESPON WHERE RECOURSE_CORRESPON.N_LAST_REC_MESS_ID =
old.N_RECOURSE_MESS_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete RECOURSE_MESSAGE because RECOURSE_CORRESPON exists.');

        END
 ;

CREATE TRIGGER tD_RECO4 AFTER DELETE ON RECOURSE_MESSAGE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECOURSE_DOCUMENT WHERE RECOURSE_DOCUMENT.N_RECOURSE_DOC_ID =
old.N_RECOURSE_MESS_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete RECOURSE_MESSAGE because RECOURSE_DOCUMENT exists.');
        END
 ;


   

CREATE TABLE RECURRING_PAYMENT
(
        N_RECURR_PYMNT_ID     CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        N_BHALF_INS_INV_ID    CHAR(16) NOT NULL, 
        D_PYMNT_SCHED         TIMESTAMP NOT NULL, 
        C_FIN_CTGY            CHAR(5) NOT NULL, 
        C_SERVICE             CHAR(5) NOT NULL, 
        C_PYMNT_FREQ          CHAR(5) NOT NULL, 
        N_PYMNT_FREQ          INTEGER, 
        D_PYMNT_START_DT      TIMESTAMP NOT NULL, 
        D_PYMNT_END_DT        TIMESTAMP NOT NULL, 
        Q_NBR_OF_PYMNTS       SMALLINT, 
        Q_RMNG_PYMNTS         INTEGER, 
        N_PAYEE_INS_INV_ID    CHAR(16) NOT NULL, 
        N_MAIL_INS_INV_ID     CHAR(16) NOT NULL, 
        N_CLIENT_EFT_ID       CHAR(7) NOT NULL, 
        A_PER_PYMNT           DECIMAL(19, 6), 
        D_EFF_DT              TIMESTAMP NOT NULL, 
        C_PRINTER_LOC         CHAR(4) NOT NULL, 
        C_CURRENCY_UOM        CHAR(5) NOT NULL, 
        D_EXP_DT              TIMESTAMP NOT NULL, 
        T_COMMENT             CHAR(254) NOT NULL, 
        C_PYMNT_METH          CHAR(5) NOT NULL, 
        M_PAYEE_NAME          CHAR(200) NOT NULL, 
        C_LANGUAGE            CHAR(5) NOT NULL, 
        C_REC_PYMNT_STAT      CHAR(5) NOT NULL, 
        M_STREET_NAME         CHAR(32) NOT NULL, 
        M_CITY_NAME           CHAR(32) NOT NULL, 
        C_COUNTRY             CHAR(5) NOT NULL, 
        M_FLOOR               CHAR(12) NOT NULL, 
        M_STREET_NO           CHAR(9) NOT NULL, 
        C_APPLYPCT_IND        CHAR(1) NOT NULL, 
        C_APPLYEOM_IND        CHAR(1) NOT NULL, 
        D_APPLYDAY            INTEGER NOT NULL, 
        N_APPLYPCT            DECIMAL(5, 2), 
        N_FLOOR               CHAR(12) NOT NULL, 
        M_SUB_CITY_NAME       CHAR(32) NOT NULL, 
        C_POSTAL_CODE         CHAR(9) NOT NULL, 
        C_ADDR_OVRD_IND       CHAR(1) NOT NULL, 
        C_PREF_CURR_UOM       CHAR(5) NOT NULL, 
        D_CONV_DT             TIMESTAMP NOT NULL, 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL, 
        T_SHORT_DESC          VARCHAR(254) NOT NULL, 
        C_DISABLE_ADDR_IND    CHAR(1) NOT NULL, 
        M_CONAME              CHAR(32) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_BHALF_CPR_CVR       CHAR(10) NOT NULL DEFAULT '', 
        C_TAX_REPORTABLE      CHAR(5) NOT NULL DEFAULT '', 
        M_MAIL_TO_NAME        VARCHAR(50) NOT NULL DEFAULT '', 
        C_COST_IND            CHAR(1) NOT NULL DEFAULT 'N'
);



CREATE UNIQUE INDEX XTP33801 ON RECURRING_PAYMENT
(
        N_RECURR_PYMNT_ID     ASC
);



CREATE INDEX XTP33806 ON RECURRING_PAYMENT
(
        N_LINE_ID             ASC, 
        C_REC_PYMNT_STAT      ASC
)
         CLUSTER;



CREATE INDEX XTP33807 ON RECURRING_PAYMENT
(
        D_PYMNT_SCHED         ASC, 
        D_EXP_DT              ASC, 
        C_REC_PYMNT_STAT      ASC, 
        C_RCD_DEL             ASC
);



CREATE INDEX XTP33802 ON RECURRING_PAYMENT
(
        N_BHALF_INS_INV_ID    ASC
);



ALTER TABLE RECURRING_PAYMENT
ADD CONSTRAINT XTP33801  PRIMARY KEY (N_RECURR_PYMNT_ID);



ALTER TABLE RECURRING_PAYMENT
ADD CONSTRAINT RTP31326  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE SET NULL;



ALTER TABLE RECURRING_PAYMENT
ADD CONSTRAINT RTP30023  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE PAYMENT
ADD CONSTRAINT RTP33801  FOREIGN KEY (N_RECURR_PYMNT_ID)
                REFERENCES RECURRING_PAYMENT  (N_RECURR_PYMNT_ID)
                ON DELETE SET NULL;



CREATE TRIGGER tI_RECUR AFTER INSERT ON RECURRING_PAYMENT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM LINE WHERE new.N_LINE_ID = LINE.N_LINE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert RECURRING_PAYMENT because LINE does not exist.');
        END
 ;

CREATE TRIGGER tI_RECU2 AFTER INSERT ON RECURRING_PAYMENT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE RECURRING_PAYMENT
      SET
        RECURRING_PAYMENT.N_ORG_ENTY_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ORG_ENTITY
            WHERE
              new.N_ORG_ENTY_ID = ORG_ENTITY.N_ORG_ENTY_ID
        )
 ;

CREATE TRIGGER tI_RECU3 AFTER INSERT ON RECURRING_PAYMENT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE RECURRING_PAYMENT
      SET
        RECURRING_PAYMENT.N_BHALF_INS_INV_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INS_INVOLVEMENT
            WHERE
              new.N_BHALF_INS_INV_ID = INS_INVOLVEMENT.N_INS_INVL_ID
        )
 ;

CREATE TRIGGER tD_RECUR AFTER DELETE ON RECURRING_PAYMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
    UPDATE PAYMENT
      SET
        PAYMENT.N_RECURR_PYMNT_ID = NULL
      WHERE
        PAYMENT.N_RECURR_PYMNT_ID = old.N_RECURR_PYMNT_ID
 ;

CREATE TRIGGER tU_RECUR AFTER UPDATE ON RECURRING_PAYMENT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RECURRING_PAYMENT WHERE new.N_RECURR_PYMNT_ID <>
old.N_RECURR_PYMNT_ID))
     UPDATE PAYMENT
       SET
         PAYMENT.N_RECURR_PYMNT_ID = NULL
       WHERE
         PAYMENT.N_RECURR_PYMNT_ID = old.N_RECURR_PYMNT_ID
 ;

CREATE TRIGGER tU_RECU2 AFTER UPDATE ON RECURRING_PAYMENT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM LINE WHERE new.N_LINE_ID = LINE.N_LINE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update RECURRING_PAYMENT because LINE does not exist.');
        END
 ;

CREATE TRIGGER tU_RECU3 AFTER UPDATE ON RECURRING_PAYMENT
     FOR EACH ROW MODE DB2SQL
    UPDATE RECURRING_PAYMENT
      SET
        RECURRING_PAYMENT.N_ORG_ENTY_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ORG_ENTITY
            WHERE
              new.N_ORG_ENTY_ID = ORG_ENTITY.N_ORG_ENTY_ID
        )
 ;


   

CREATE TABLE REPAIR_AGREEMENT
(
        N_REP_AGREEMT_ID      CHAR(16) NOT NULL, 
        F_DISCOUNT_TOTAL      DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        F_DISC_SPARE_PARTS    DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        F_DISCOUNT_FOR_PAY    DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        F_PAINT_DISC_PAY      DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        A_PAINT_H_RATE_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_PAINT_H_RATE_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        F_PAY_PAINT_LAYER1    INTEGER NOT NULL DEFAULT 0, 
        F_PAY_PAINT_LAYER2    INTEGER NOT NULL DEFAULT 0, 
        F_PAY_PAINT_LAYER3    INTEGER NOT NULL DEFAULT 0, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_PAINT_SPRAY_IND     CHAR(1) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP42601 ON REPAIR_AGREEMENT
(
        N_REP_AGREEMT_ID      ASC
)
         CLUSTER;



ALTER TABLE REPAIR_AGREEMENT
ADD CONSTRAINT XTP42601  PRIMARY KEY (N_REP_AGREEMT_ID);



ALTER TABLE REPAIR_AGREEMENT
ADD CONSTRAINT RTP42402  FOREIGN KEY (N_REP_AGREEMT_ID)
                REFERENCES PRICE  (N_PRICE_ID)
                ON DELETE RESTRICT;



ALTER TABLE PRICE_PER_UNITGRP
ADD CONSTRAINT RTP42601  FOREIGN KEY (N_REP_AGREEMT_ID)
                REFERENCES REPAIR_AGREEMENT  (N_REP_AGREEMT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_REPAI AFTER INSERT ON REPAIR_AGREEMENT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM PRICE WHERE new.N_REP_AGREEMT_ID = PRICE.N_PRICE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert REPAIR_AGREEMENT because PRICE does not exist.');
        END
 ;

CREATE TRIGGER tD_REPAI AFTER DELETE ON REPAIR_AGREEMENT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PRICE_PER_UNITGRP WHERE PRICE_PER_UNITGRP.N_REP_AGREEMT_ID =
old.N_REP_AGREEMT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete REPAIR_AGREEMENT because PRICE_PER_UNITGRP exists.');
        END
 ;


   

CREATE TABLE REPAIR_ESTIMATE
(
        N_ESTIMATE_ID         CHAR(16) NOT NULL, 
        N_ITEM_ID             CHAR(16) NOT NULL, 
        N_SRV_PROV_ROLE_ID    CHAR(16) NOT NULL, 
        A_ESTM_REPAIR         DECIMAL(19, 6), 
        C_CURRENCY_UOM        CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP35801 ON REPAIR_ESTIMATE
(
        N_ESTIMATE_ID         ASC
);



ALTER TABLE REPAIR_ESTIMATE
ADD CONSTRAINT XTP35801  PRIMARY KEY (N_ESTIMATE_ID);



ALTER TABLE REPAIR_ESTIMATE
ADD CONSTRAINT RTP29108  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE REPAIR_ESTIMATE
ADD CONSTRAINT RTP28909  FOREIGN KEY (N_SRV_PROV_ROLE_ID)
                REFERENCES INVOLVEMENT_ROLE  (N_INVL_ROLE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_REPAI AFTER INSERT ON REPAIR_ESTIMATE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INVOLVEMENT_ROLE WHERE new.N_SRV_PROV_ROLE_ID =
INVOLVEMENT_ROLE.N_INVL_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert REPAIR_ESTIMATE because INVOLVEMENT_ROLE does not
exist.');
        END
 ;

CREATE TRIGGER tI_REPA2 AFTER INSERT ON REPAIR_ESTIMATE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert REPAIR_ESTIMATE because ITEM does not exist.');
        END
 ;

CREATE TRIGGER tU_REPAI AFTER UPDATE ON REPAIR_ESTIMATE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM INVOLVEMENT_ROLE WHERE new.N_SRV_PROV_ROLE_ID =
INVOLVEMENT_ROLE.N_INVL_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update REPAIR_ESTIMATE because INVOLVEMENT_ROLE does not
exist.');
        END
 ;

CREATE TRIGGER tU_REPA2 AFTER UPDATE ON REPAIR_ESTIMATE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update REPAIR_ESTIMATE because ITEM does not exist.');
        END
 ;


   

CREATE TABLE REPEAT_RULE
(
        N_REPEAT_RULE_ID      CHAR(16) NOT NULL, 
        D_RPTV_START          TIMESTAMP NOT NULL, 
        D_RPTV_END            TIMESTAMP NOT NULL, 
        C_RPTV_FREQ           CHAR(5) NOT NULL, 
        Q_TASK_APERC_DAYS     INTEGER, 
        Q_TASK_DUE_DAYS       INTEGER, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP35901 ON REPEAT_RULE
(
        N_REPEAT_RULE_ID      ASC
);



ALTER TABLE REPEAT_RULE
ADD CONSTRAINT XTP35901  PRIMARY KEY (N_REPEAT_RULE_ID);



ALTER TABLE CCS_TASK
ADD CONSTRAINT RTP35901  FOREIGN KEY (N_REPEAT_RULE_ID)
                REFERENCES REPEAT_RULE  (N_REPEAT_RULE_ID)
                ON DELETE SET NULL;



CREATE TRIGGER tD_REPEA AFTER DELETE ON REPEAT_RULE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
    UPDATE CCS_TASK
      SET
        CCS_TASK.N_REPEAT_RULE_ID = NULL
      WHERE
        CCS_TASK.N_REPEAT_RULE_ID = old.N_REPEAT_RULE_ID
 ;

CREATE TRIGGER tU_REPEA AFTER UPDATE ON REPEAT_RULE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM REPEAT_RULE WHERE new.N_REPEAT_RULE_ID <> old.N_REPEAT_RULE_ID))

     UPDATE CCS_TASK
       SET
         CCS_TASK.N_REPEAT_RULE_ID = NULL
       WHERE
         CCS_TASK.N_REPEAT_RULE_ID = old.N_REPEAT_RULE_ID
 ;


   

CREATE TABLE REQUEST_CLAIM_HIST
(
        N_REQ_CLM_HIST_ID     CHAR(16) NOT NULL, 
        N_REQ_SNAPSHOT_ID     CHAR(16) NOT NULL, 
        N_POLICY              CHAR(10) NOT NULL, 
        N_CLAIM_NUMBER        CHAR(16) NOT NULL, 
        T_PRODUCT_DESC        VARCHAR(100) NOT NULL, 
        D_DATEOFLOSS_DT       TIMESTAMP NOT NULL, 
        T_LOSS_DESC           VARCHAR(400) NOT NULL, 
        T_LOC_DESC            VARCHAR(254) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP98401 ON REQUEST_CLAIM_HIST
(
        N_REQ_CLM_HIST_ID     ASC
);



ALTER TABLE REQUEST_CLAIM_HIST
ADD CONSTRAINT XTP98401  PRIMARY KEY (N_REQ_CLM_HIST_ID);



ALTER TABLE REQUEST_CLAIM_HIST
ADD CONSTRAINT RTP98201  FOREIGN KEY (N_REQ_SNAPSHOT_ID)
                REFERENCES REQUEST_SNAPSHOT  (N_REQ_SNAPSHOT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_REQUE AFTER INSERT ON REQUEST_CLAIM_HIST
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE REQUEST_CLAIM_HIST
      SET
        REQUEST_CLAIM_HIST.N_REQ_SNAPSHOT_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM REQUEST_SNAPSHOT
            WHERE
              new.N_REQ_SNAPSHOT_ID = REQUEST_SNAPSHOT.N_REQ_SNAPSHOT_ID
        )
 ;


   

CREATE TABLE REQUEST_POL_COV
(
        N_REQ_POL_COV_ID      CHAR(16) NOT NULL, 
        N_REQ_SNAPSHOT_ID     CHAR(16) NOT NULL, 
        C_POLICY_COVERAGE     CHAR(9) NOT NULL, 
        C_STATUS              CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP98301 ON REQUEST_POL_COV
(
        N_REQ_POL_COV_ID      ASC
);



ALTER TABLE REQUEST_POL_COV
ADD CONSTRAINT XTP98301  PRIMARY KEY (N_REQ_POL_COV_ID);



ALTER TABLE REQUEST_POL_COV
ADD CONSTRAINT RTP98202  FOREIGN KEY (N_REQ_SNAPSHOT_ID)
                REFERENCES REQUEST_SNAPSHOT  (N_REQ_SNAPSHOT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_REQUE AFTER INSERT ON REQUEST_POL_COV
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE REQUEST_POL_COV
      SET
        REQUEST_POL_COV.N_REQ_SNAPSHOT_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM REQUEST_SNAPSHOT
            WHERE
              new.N_REQ_SNAPSHOT_ID = REQUEST_SNAPSHOT.N_REQ_SNAPSHOT_ID
        )
 ;


   

CREATE TABLE REQUEST_SNAPSHOT
(
        N_REQ_SNAPSHOT_ID     CHAR(16) NOT NULL, 
        N_ASSR_REQUEST_ID     CHAR(16) NOT NULL, 
        C_BI_PROCESSED_IND    CHAR(1) NOT NULL, 
        D_REQ_LAST_UPDT_TS    TIMESTAMP NOT NULL, 
        N_REQ_LAST_MOD        CHAR(16) NOT NULL, 
        C_ATTACHMENT          CHAR(5) NOT NULL, 
        T_ATTACHMENT          VARCHAR(254) NOT NULL, 
        C_CLM_OWNR_AS_ASSR    CHAR(5) NOT NULL, 
        T_CLM_OWNR_AS_ASSR    VARCHAR(254) NOT NULL, 
        C_ASSESSOR_TYPE       CHAR(5) NOT NULL, 
        T_ASSESSOR_TYPE       VARCHAR(254) NOT NULL, 
        C_INIT_ESTIMATE       CHAR(5) NOT NULL, 
        T_INIT_ESTIMATE       VARCHAR(254) NOT NULL, 
        N_ESTIMATE_AMT        DECIMAL(19, 6), 
        N_CLAIM_NUMBER        CHAR(9) NOT NULL, 
        M_CMT_COMB_NAME       CHAR(32) NOT NULL, 
        C_LINE_TYPE           CHAR(5) NOT NULL, 
        T_LINE_TYPE           VARCHAR(254) NOT NULL, 
        N_CUSTOMER_NUMBER     CHAR(7) NOT NULL, 
        N_POLICY              CHAR(10) NOT NULL, 
        C_ORGAN_KODE          CHAR(5) NOT NULL, 
        T_ORGAN_KODE          VARCHAR(254) NOT NULL, 
        D_LOSS_TIME           TIMESTAMP NOT NULL, 
        A_DEDUCT_AMT          DECIMAL(19, 6), 
        C_DEDUCT_UOM          CHAR(5) NOT NULL, 
        T_DEDUCT_UOM          VARCHAR(254) NOT NULL, 
        C_SHARED_DED_IND      CHAR(1) NOT NULL, 
        C_DED_VER_IND         CHAR(1) NOT NULL, 
        C_DED_PER_IND         CHAR(1) NOT NULL, 
        C_SENSITIVITY         CHAR(5) NOT NULL, 
        T_SENSITIVITY         VARCHAR(254) NOT NULL, 
        C_LOSS_TYPE           CHAR(5) NOT NULL, 
        T_LOSS_TYPE           VARCHAR(254) NOT NULL, 
        C_CAUSE_OF_LOSS       CHAR(5) NOT NULL, 
        T_CAUSE_OF_LOSS       VARCHAR(254) NOT NULL, 
        C_SUB_COL             CHAR(5) NOT NULL, 
        T_SUB_COL             VARCHAR(254) NOT NULL, 
        T_DESC                VARCHAR(400) NOT NULL, 
        M_COMBINED_NAME       CHAR(32) NOT NULL, 
        N_HOMENUMBER          CHAR(15) NOT NULL, 
        N_WORKNUMBER          CHAR(15) NOT NULL, 
        N_MOBILENUMBER        CHAR(15) NOT NULL, 
        M_EMAIL               VARCHAR(150) NOT NULL, 
        T_CONTACT_NOTE        VARCHAR(80) NOT NULL, 
        M_STREET_NAME         CHAR(32) NOT NULL, 
        M_STREET_NO           CHAR(9) NOT NULL, 
        M_FLOOR               CHAR(12) NOT NULL, 
        M_SUB_CITY_NAME       CHAR(32) NOT NULL, 
        C_POSTAL_CODE         CHAR(9) NOT NULL, 
        M_CITY_NAME           CHAR(32) NOT NULL, 
        T_LOC_DESC            VARCHAR(400) NOT NULL, 
        C_RESERVATION         CHAR(5) NOT NULL, 
        T_RESERVATION         VARCHAR(254) NOT NULL, 
        C_POL_TXT_IND         CHAR(1) NOT NULL, 
        M_POL_COMB_NAME       CHAR(32) NOT NULL, 
        N_POL_HOMENUMBER      CHAR(15) NOT NULL, 
        N_POL_WORKNUMBER      CHAR(15) NOT NULL, 
        N_POL_MOBILENUMBER    CHAR(15) NOT NULL, 
        N_POL_FAXNUMBER       CHAR(15) NOT NULL, 
        M_POL_EMAIL           VARCHAR(150) NOT NULL, 
        T_ECONOMICRATING      VARCHAR(254) NOT NULL, 
        M_INS_STREET_NAME     CHAR(32) NOT NULL, 
        M_INS_STREET_NO       CHAR(9) NOT NULL, 
        M_INS_FLOOR           CHAR(12) NOT NULL, 
        M_INS_SUBCITY_NAME    CHAR(32) NOT NULL, 
        C_INS_POSTAL_CODE     CHAR(9) NOT NULL, 
        M_INS_CITY_NAME       CHAR(32) NOT NULL, 
        T_PRODUCT_DESC        VARCHAR(50) NOT NULL, 
        T_LITRA               CHAR(2) NOT NULL, 
        T_AGREEMENT_TYPE      CHAR(40) NOT NULL, 
        N_TERMS               CHAR(10) NOT NULL, 
        D_POLICY_EFF_DT       TIMESTAMP NOT NULL, 
        C_COV_MATCH_STAT      CHAR(5) NOT NULL, 
        T_COV_MATCH_STAT      VARCHAR(254) NOT NULL, 
        A_SQUARE_METERS       DECIMAL(19, 6), 
        C_FLOORS              CHAR(1) NOT NULL, 
        A_TOTAL_FLOOR         DECIMAL(19, 6), 
        C_CONTRUCTION_YEAR    INTEGER, 
        N_MATR_NO             CHAR(10) NOT NULL, 
        C_WALL                CHAR(5) NOT NULL, 
        T_WALL                VARCHAR(254) NOT NULL, 
        C_ROOF                CHAR(5) NOT NULL, 
        T_ROOF                VARCHAR(254) NOT NULL, 
        C_HEATING             CHAR(5) NOT NULL, 
        T_HEATING             VARCHAR(254) NOT NULL, 
        C_WATER_PROTECT       CHAR(5) NOT NULL, 
        T_WATER_PROTECT       VARCHAR(254) NOT NULL, 
        A_INSURED_SUM         DECIMAL(19, 6), 
        A_SPC_CONTENT_SUM     DECIMAL(19, 6) DEFAULT 0, 
        A_COINS_STAMPS        DECIMAL(19, 6), 
        C_SECURITY            CHAR(5) NOT NULL, 
        T_SECURITY            VARCHAR(254) NOT NULL, 
        C_COV_PERSONS_IND     CHAR(1) NOT NULL, 
        C_OTH_COV_ADR_IND     CHAR(1) NOT NULL, 
        N_BOOK_BY_OE_ID       CHAR(16) NOT NULL, 
        N_BOOK_BY_PHONE       CHAR(8) NOT NULL, 
        N_BOOK_BY_DEPT_ID     CHAR(4) NOT NULL, 
        N_BOOK_BY_DEPT        VARCHAR(70) NOT NULL, 
        C_POLICY_TYPE         CHAR(5) NOT NULL, 
        T_POLICY_TYPE         VARCHAR(254) NOT NULL, 
        M_CONAME              CHAR(32) NOT NULL, 
        M_POL_STREET_NAME     CHAR(32) NOT NULL, 
        M_POL_STREET_NO       CHAR(9) NOT NULL, 
        M_POL_FLOOR           CHAR(12) NOT NULL, 
        M_POL_SUB_CTY_NAME    CHAR(32) NOT NULL, 
        C_POL_POSTAL_CODE     CHAR(9) NOT NULL, 
        M_POL_CITY_NAME       CHAR(32) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        A_VALUABLES_SUM       NUMERIC(19, 6) NOT NULL DEFAULT 0, 
        C_VALUABLES_UOM       CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_CONTNT_TOOLS_SUM    NUMERIC(19, 6) NOT NULL DEFAULT 0, 
        C_CONTNT_TOOLS_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        C_BUSS_IN_PROPERTY    CHAR(5) NOT NULL DEFAULT '', 
        C_BUSINESS_TYPE       CHAR(6) NOT NULL DEFAULT '', 
        A_BUSINESS_AREA       DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        Q_NUM_OF_TOILETS      INTEGER NOT NULL DEFAULT 0, 
        C_ASSOR_TASK_TYPE     CHAR(5) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP98201 ON REQUEST_SNAPSHOT
(
        N_REQ_SNAPSHOT_ID     ASC
);



ALTER TABLE REQUEST_SNAPSHOT
ADD CONSTRAINT XTP98201  PRIMARY KEY (N_REQ_SNAPSHOT_ID);



ALTER TABLE REQUEST_SNAPSHOT
ADD CONSTRAINT RTP98101  FOREIGN KEY (N_ASSR_REQUEST_ID)
                REFERENCES ASSESSOR_REQUEST  (N_ASSR_REQUEST_ID)
                ON DELETE RESTRICT;



ALTER TABLE REQUEST_SNAPSHOT
ADD CONSTRAINT RTP31314  FOREIGN KEY (N_REQ_LAST_MOD)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



ALTER TABLE REQUEST_POL_COV
ADD CONSTRAINT RTP98202  FOREIGN KEY (N_REQ_SNAPSHOT_ID)
                REFERENCES REQUEST_SNAPSHOT  (N_REQ_SNAPSHOT_ID)
                ON DELETE RESTRICT;



ALTER TABLE REQUEST_CLAIM_HIST
ADD CONSTRAINT RTP98201  FOREIGN KEY (N_REQ_SNAPSHOT_ID)
                REFERENCES REQUEST_SNAPSHOT  (N_REQ_SNAPSHOT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_REQUE AFTER INSERT ON REQUEST_SNAPSHOT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE REQUEST_SNAPSHOT
      SET
        REQUEST_SNAPSHOT.N_REQ_LAST_MOD = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ORG_ENTITY
            WHERE
              new.N_REQ_LAST_MOD = ORG_ENTITY.N_ORG_ENTY_ID
        )
 ;

CREATE TRIGGER tI_REQU2 AFTER INSERT ON REQUEST_SNAPSHOT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE REQUEST_SNAPSHOT
      SET
        REQUEST_SNAPSHOT.N_ASSR_REQUEST_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ASSESSOR_REQUEST
            WHERE
              new.N_ASSR_REQUEST_ID = ASSESSOR_REQUEST.N_ASSR_REQUEST_ID
        )
 ;

CREATE TRIGGER tD_REQUE AFTER DELETE ON REQUEST_SNAPSHOT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM REQUEST_CLAIM_HIST WHERE REQUEST_CLAIM_HIST.N_REQ_SNAPSHOT_ID =
old.N_REQ_SNAPSHOT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete REQUEST_SNAPSHOT because REQUEST_CLAIM_HIST exists.');

        END
 ;

CREATE TRIGGER tD_REQU2 AFTER DELETE ON REQUEST_SNAPSHOT
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM REQUEST_POL_COV WHERE REQUEST_POL_COV.N_REQ_SNAPSHOT_ID =
old.N_REQ_SNAPSHOT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete REQUEST_SNAPSHOT because REQUEST_POL_COV exists.');
        END
 ;


   

CREATE TABLE RESERVE
(
        N_ESTIMATE_ID         CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        N_ESTIMATE_AMT        DECIMAL(19, 6) NOT NULL, 
        C_ESTIMATE_UOM        CHAR(5) NOT NULL, 
        C_SYSTEM_SET_IND      CHAR(1) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP40601 ON RESERVE
(
        N_ESTIMATE_ID         ASC
);



CREATE INDEX XTP40604 ON RESERVE
(
        N_LINE_ID             ASC, 
        C_RCD_DEL             ASC
);



CREATE INDEX XTP40605 ON RESERVE
(
        D_CREATE_TS           DESC, 
        N_ESTIMATE_AMT        ASC
);



ALTER TABLE RESERVE
ADD CONSTRAINT XTP40601  PRIMARY KEY (N_ESTIMATE_ID);



ALTER TABLE RESERVE
ADD CONSTRAINT RTP27407  FOREIGN KEY (N_ESTIMATE_ID)
                REFERENCES FINANCIAL_ENTITY  (N_FIN_ENT_ID)
                ON DELETE RESTRICT;



ALTER TABLE RESERVE
ADD CONSTRAINT RTP30028  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



ALTER TABLE RESERVE_DTL
ADD CONSTRAINT RTP40601  FOREIGN KEY (N_ESTIMATE_ID)
                REFERENCES RESERVE  (N_ESTIMATE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_RESER AFTER INSERT ON RESERVE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM FINANCIAL_ENTITY WHERE new.N_ESTIMATE_ID =
FINANCIAL_ENTITY.N_FIN_ENT_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert RESERVE because FINANCIAL_ENTITY does not exist.');
        END
 ;

CREATE TRIGGER tI_RESE2 AFTER INSERT ON RESERVE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE RESERVE
      SET
        RESERVE.N_LINE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM LINE
            WHERE
              new.N_LINE_ID = LINE.N_LINE_ID
        )
 ;

CREATE TRIGGER tD_RESER AFTER DELETE ON RESERVE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM RESERVE_DTL WHERE RESERVE_DTL.N_ESTIMATE_ID =
old.N_ESTIMATE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete RESERVE because RESERVE_DTL exists.');
        END
 ;

CREATE TRIGGER tU_RESER AFTER UPDATE ON RESERVE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM RESERVE WHERE new.N_ESTIMATE_ID <> old.N_ESTIMATE_ID)) AND
     (0 < (SELECT count(*) FROM RESERVE_DTL WHERE RESERVE_DTL.N_ESTIMATE_ID = old.N_ESTIMATE_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update RESERVE because RESERVE_DTL exists.');
        END
 ;

CREATE TRIGGER tU_RESE2 AFTER UPDATE ON RESERVE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM FINANCIAL_ENTITY WHERE new.N_ESTIMATE_ID =
FINANCIAL_ENTITY.N_FIN_ENT_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update RESERVE because FINANCIAL_ENTITY does not exist.');
        END
 ;


   

CREATE TABLE RESERVE_DTL
(
        N_ESTIMATE_DTL_ID     CHAR(16) NOT NULL, 
        C_FIN_CTGY            CHAR(5) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        Q_SRVC_RATE           INTEGER, 
        C_SRVC_RATE_UOM       CHAR(5) NOT NULL, 
        A_SRVC_RATE           DECIMAL(19, 6), 
        A_ESTIMATE_AMT        DECIMAL(19, 6), 
        C_ESTIMATE_UOM        CHAR(5) NOT NULL, 
        C_SRVC_CTGY_TYP       CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        A_RSRV_PTD_AMT        DECIMAL(19, 6), 
        C_BALRSRV_MODE        CHAR(5) NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        A_SRVC_BAL_AMT        DECIMAL(19, 6), 
        C_SYSTEM_SET_IND      DECIMAL(19, 6) NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_ESTIMATE_ID         CHAR(16) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP40701 ON RESERVE_DTL
(
        N_ESTIMATE_DTL_ID     ASC
);



ALTER TABLE RESERVE_DTL
ADD CONSTRAINT XTP40701  PRIMARY KEY (N_ESTIMATE_DTL_ID);



ALTER TABLE RESERVE_DTL
ADD CONSTRAINT RTP40601  FOREIGN KEY (N_ESTIMATE_ID)
                REFERENCES RESERVE  (N_ESTIMATE_ID)
                ON DELETE RESTRICT;



ALTER TABLE RESERVE_DTL
ADD CONSTRAINT RTP30002  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_RESER AFTER INSERT ON RESERVE_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM RESERVE WHERE new.N_ESTIMATE_ID = RESERVE.N_ESTIMATE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert RESERVE_DTL because RESERVE does not exist.');
        END
 ;

CREATE TRIGGER tI_RESE2 AFTER INSERT ON RESERVE_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM LINE WHERE new.N_LINE_ID = LINE.N_LINE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert RESERVE_DTL because LINE does not exist.');
        END
 ;

CREATE TRIGGER tU_RESER AFTER UPDATE ON RESERVE_DTL
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM RESERVE WHERE new.N_ESTIMATE_ID = RESERVE.N_ESTIMATE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update RESERVE_DTL because RESERVE does not exist.');
        END
 ;

CREATE TRIGGER tU_RESE2 AFTER UPDATE ON RESERVE_DTL
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM LINE WHERE new.N_LINE_ID = LINE.N_LINE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update RESERVE_DTL because LINE does not exist.');
        END
 ;


   

CREATE TABLE RETURN_TO_WORK
(
        N_RTW_ID              CHAR(16) NOT NULL, 
        N_CLAIMANT_ROLE_ID    CHAR(16) NOT NULL, 
        D_LAST_WORKED_DT      TIMESTAMP NOT NULL, 
        C_MOD_DUTY_CODE       CHAR(5) NOT NULL, 
        D_EOD_DT              TIMESTAMP NOT NULL, 
        D_ESTM_RTW_DATE       TIMESTAMP NOT NULL, 
        C_RTW_DUTY_CODE       CHAR(5) NOT NULL, 
        D_RTW_DT              TIMESTAMP NOT NULL, 
        Q_RTW_AVG_WW_VAL      DECIMAL(19, 6), 
        C_RTW_AVG_WW_UOM      CHAR(5) NOT NULL, 
        C_SAME_EMPLYR_IND     CHAR(1) NOT NULL, 
        D_BOD_DT              TIMESTAMP NOT NULL, 
        C_RTW_WW_VRFD         CHAR(1) NOT NULL, 
        C_DECISION_CODE       CHAR(5) NOT NULL, 
        C_SAME_WAGE_IND       CHAR(1) NOT NULL, 
        D_DECISION_DT         TIMESTAMP NOT NULL, 
        C_EOD_STATUS_IND      CHAR(1) NOT NULL, 
        C_SAME_OCCPTN_IND     CHAR(5) NOT NULL, 
        C_ACTIVE_IND          CHAR(1) NOT NULL, 
        T_RTW_COMMENTS        VARCHAR(254) NOT NULL, 
        N_MISSED_DAYS         INTEGER, 
        C_RTW_STATUS          CHAR(5) NOT NULL, 
        N_EST_MISSED_DAYS     INTEGER, 
        C_RSN_CODE            CHAR(5) NOT NULL, 
        N_LAST_MAN_DEPT_ID    CHAR(4) NOT NULL, 
        N_LAST_WORKDEPT_ID    CHAR(5) NOT NULL, 
        N_CREATED_OE          CHAR(16) NOT NULL, 
        N_CREATED_DEPT        CHAR(4) NOT NULL, 
        N_CREATED_WORKDEPT    CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP36501 ON RETURN_TO_WORK
(
        N_RTW_ID              ASC
);



ALTER TABLE RETURN_TO_WORK
ADD CONSTRAINT XTP36501  PRIMARY KEY (N_RTW_ID);



ALTER TABLE RETURN_TO_WORK
ADD CONSTRAINT RTP23207  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



   

CREATE TABLE RETURN_TO_WORK2
(
        N_RETURN_TO_WK2_ID    CHAR(16) NOT NULL DEFAULT '', 
        D_DATE_OF_ONSET       TIMESTAMP DEFAULT NULL, 
        D_END_DT              TIMESTAMP DEFAULT NULL, 
        Q_COMP_DAYS           DECIMAL(3) DEFAULT NULL, 
        A_PREV_PAID_AMT       DECIMAL(19, 6) DEFAULT NULL, 
        C_PREV_PAID_UOM       CHAR(5) NOT NULL DEFAULT '', 
        A_TOTAL_COMP_AMT      DECIMAL(19, 6) DEFAULT NULL, 
        C_TOTAL_COMP_UOM      CHAR(5) NOT NULL DEFAULT '', 
        A_INCOME_AMT          DECIMAL(19, 6) DEFAULT NULL, 
        C_INCOME_UOM          CHAR(5) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0
);



CREATE UNIQUE INDEX XTP45801 ON RETURN_TO_WORK2
(
        N_RETURN_TO_WK2_ID    ASC
);



ALTER TABLE RETURN_TO_WORK2
ADD CONSTRAINT XTP45801  PRIMARY KEY (N_RETURN_TO_WK2_ID);



ALTER TABLE RETURN_TO_WORK2
ADD CONSTRAINT RTP45307  FOREIGN KEY (N_RETURN_TO_WK2_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_RETUR AFTER INSERT ON RETURN_TO_WORK2
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INJURY_COMP WHERE new.N_RETURN_TO_WK2_ID =
INJURY_COMP.N_INJURY_COMP_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert RETURN_TO_WORK2 because INJURY_COMP does not
exist.');
        END
 ;


   

CREATE TABLE SELECTED_UNIT
(
        N_SELECTED_UNIT_ID    CHAR(16) NOT NULL, 
        N_PRICE_ID            CHAR(16) NOT NULL, 
        C_CONTEXT             CHAR(5) NOT NULL DEFAULT '', 
        C_CODE                CHAR(5) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP42101 ON SELECTED_UNIT
(
        N_SELECTED_UNIT_ID    ASC, 
        N_PRICE_ID            ASC
)
         CLUSTER;



ALTER TABLE SELECTED_UNIT
ADD CONSTRAINT XTP42101  PRIMARY KEY (N_SELECTED_UNIT_ID, N_PRICE_ID);



ALTER TABLE SELECTED_UNIT
ADD CONSTRAINT RTP42401  FOREIGN KEY (N_PRICE_ID)
                REFERENCES PRICE  (N_PRICE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_SELEC AFTER INSERT ON SELECTED_UNIT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM PRICE WHERE new.N_PRICE_ID = PRICE.N_PRICE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert SELECTED_UNIT because PRICE does not exist.');
        END
 ;


   

CREATE TABLE SEQUENCE_HOLDER
(
        N_TABLE_NAME_ID       CHAR(16) NOT NULL, 
        N_SEQUENCE            INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP02101 ON SEQUENCE_HOLDER
(
        N_TABLE_NAME_ID       ASC
);



ALTER TABLE SEQUENCE_HOLDER
ADD CONSTRAINT XTP02101  PRIMARY KEY (N_TABLE_NAME_ID);



   

CREATE TABLE SERVICE_INFO
(
        N_SERVICE_INFO_ID     CHAR(16) NOT NULL, 
        N_SUPPLIER_ID         CHAR(16) NOT NULL, 
        C_CONTEXT             CHAR(20) NOT NULL, 
        C_CODE                CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP49901 ON SERVICE_INFO
(
        N_SERVICE_INFO_ID     ASC
);



CREATE INDEX XTP49903 ON SERVICE_INFO
(
        N_SUPPLIER_ID         ASC, 
        C_CONTEXT             ASC, 
        C_CODE                ASC
)
         CLUSTER;



ALTER TABLE SERVICE_INFO
ADD CONSTRAINT XTP49901  PRIMARY KEY (N_SERVICE_INFO_ID);



ALTER TABLE SERVICE_INFO
ADD CONSTRAINT RTP43706  FOREIGN KEY (N_SUPPLIER_ID)
                REFERENCES SUPPLIER  (N_SUPPLIER_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_SERVI AFTER INSERT ON SERVICE_INFO
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE SERVICE_INFO
      SET
        SERVICE_INFO.N_SUPPLIER_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM SUPPLIER
            WHERE
              new.N_SUPPLIER_ID = SUPPLIER.N_SUPPLIER_ID
        )
 ;


   

CREATE TABLE SETTLEMENT_RANGE
(
        N_SETTL_ID            CHAR(16) NOT NULL, 
        N_NEGOTIATION_ID      CHAR(16) NOT NULL, 
        D_SETTLEMENT          TIMESTAMP NOT NULL, 
        M_FROM_VALUE          DECIMAL(19, 6), 
        C_FROM_UOM            CHAR(5) NOT NULL, 
        M_TO_VALUE            DECIMAL(19, 6), 
        C_TO_UOM              CHAR(5) NOT NULL, 
        C_MARK_IN_ERR_IND     CHAR(1) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP37301 ON SETTLEMENT_RANGE
(
        N_SETTL_ID            ASC
);



CREATE INDEX XTP37302 ON SETTLEMENT_RANGE
(
        D_SETTLEMENT          ASC
);



ALTER TABLE SETTLEMENT_RANGE
ADD CONSTRAINT XTP37301  PRIMARY KEY (N_SETTL_ID);



ALTER TABLE SETTLEMENT_RANGE
ADD CONSTRAINT RTP30905  FOREIGN KEY (N_NEGOTIATION_ID)
                REFERENCES NEGOTIATION  (N_NEGOTIATION_ID)
                ON DELETE RESTRICT;



   

CREATE TABLE SHARED_DOCMT
(
        N_SHARED_DOCMT_ID     CHAR(16) NOT NULL, 
        N_CLMGRP_ID           CHAR(16) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        C_DOC_TYPE            CHAR(5) NOT NULL, 
        D_DATE_RCVD           TIMESTAMP NOT NULL, 
        T_COMMENT             CHAR(254) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP42901 ON SHARED_DOCMT
(
        N_SHARED_DOCMT_ID     ASC
);



ALTER TABLE SHARED_DOCMT
ADD CONSTRAINT XTP42901  PRIMARY KEY (N_SHARED_DOCMT_ID);



ALTER TABLE SHARED_DOCMT
ADD CONSTRAINT RTP22227  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



ALTER TABLE SHARED_DOCMT
ADD CONSTRAINT RTP22405  FOREIGN KEY (N_CLMGRP_ID)
                REFERENCES CLAIM_GRP  (N_CLMGRP_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_SHARE AFTER INSERT ON SHARED_DOCMT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE SHARED_DOCMT
      SET
        SHARED_DOCMT.N_CLMGRP_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIM_GRP
            WHERE
              new.N_CLMGRP_ID = CLAIM_GRP.N_CLMGRP_ID
        )
 ;

CREATE TRIGGER tI_SHAR2 AFTER INSERT ON SHARED_DOCMT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE SHARED_DOCMT
      SET
        SHARED_DOCMT.N_CLAIM_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIM
            WHERE
              new.N_CLAIM_ID = CLAIM.N_CLAIM_ID
        )
 ;


   

CREATE TABLE SICKNESS_BENEFIT
(
        N_SICK_BENEFIT_ID     CHAR(16) NOT NULL, 
        N_CLAIMANT_ROLE_ID    CHAR(16) NOT NULL, 
        D_BENEFIT_START       TIMESTAMP NOT NULL, 
        C_DEMAND_UOM          CHAR(5) NOT NULL, 
        D_BENEFIT_END         TIMESTAMP NOT NULL, 
        C_CONT_WAGE_IND       CHAR(1) NOT NULL, 
        A_SICK_BENEFIT_AMT    DECIMAL(19, 6), 
        C_ACTIVE_IND          CHAR(1) NOT NULL, 
        C_SICK_BENEFIT_UOM    CHAR(5) NOT NULL, 
        A_DEMAND_AMT          DECIMAL(19, 6), 
        N_INS_INVL_ID         CHAR(16) NOT NULL, 
        N_LAST_MAN_DEPT_ID    CHAR(4) NOT NULL, 
        N_LAST_WORKDEPT_ID    CHAR(5) NOT NULL, 
        N_CREATED_OE          CHAR(16) NOT NULL, 
        N_CREATED_DEPT        CHAR(4) NOT NULL, 
        N_CREATED_WORKDEPT    CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP43001 ON SICKNESS_BENEFIT
(
        N_SICK_BENEFIT_ID     ASC
);



ALTER TABLE SICKNESS_BENEFIT
ADD CONSTRAINT XTP43001  PRIMARY KEY (N_SICK_BENEFIT_ID);



ALTER TABLE SICKNESS_BENEFIT
ADD CONSTRAINT RTP23211  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE SICKNESS_BENEFIT
ADD CONSTRAINT RTP28316  FOREIGN KEY (N_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_SICKN AFTER INSERT ON SICKNESS_BENEFIT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE SICKNESS_BENEFIT
      SET
        SICKNESS_BENEFIT.N_INS_INVL_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INS_INVOLVEMENT
            WHERE
              new.N_INS_INVL_ID = INS_INVOLVEMENT.N_INS_INVL_ID
        )
 ;

CREATE TRIGGER tI_SICK2 AFTER INSERT ON SICKNESS_BENEFIT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_CLAIMANT_ROLE_ID =
CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert SICKNESS_BENEFIT because CLAIMANT_ROLE does not
exist.');
        END
 ;

CREATE TRIGGER tU_SICKN AFTER UPDATE ON SICKNESS_BENEFIT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_CLAIMANT_ROLE_ID =
CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update SICKNESS_BENEFIT because CLAIMANT_ROLE does not
exist.');
        END
 ;


   

CREATE TABLE SICKNESS_BENEFIT2
(
        N_SICKNESS_BEN2_ID    CHAR(16) NOT NULL DEFAULT '', 
        A_MUNICIPA_DEMAND     DECIMAL(19, 6) DEFAULT NULL, 
        C_MUNICIPA_DEM_UOM    CHAR(5) NOT NULL DEFAULT '', 
        D_DATE_OF_ONSET       TIMESTAMP DEFAULT NULL, 
        D_END_DT              TIMESTAMP DEFAULT NULL, 
        C_FOLLOWUP_REASON     CHAR(5) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0, 
        N_MAX_SB_DAYS         INTEGER, 
        A_DAILY_SUM           DECIMAL(19, 6), 
        C_DAILY_SUM_UOM       CHAR(5), 
        N_SICK_BENFIT_DAYS    INTEGER NOT NULL DEFAULT 0
);



CREATE UNIQUE INDEX XTP45901 ON SICKNESS_BENEFIT2
(
        N_SICKNESS_BEN2_ID    ASC
);



ALTER TABLE SICKNESS_BENEFIT2
ADD CONSTRAINT XTP45901  PRIMARY KEY (N_SICKNESS_BEN2_ID);



ALTER TABLE SICKNESS_BENEFIT2
ADD CONSTRAINT RTP45306  FOREIGN KEY (N_SICKNESS_BEN2_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_SICKN AFTER INSERT ON SICKNESS_BENEFIT2
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INJURY_COMP WHERE new.N_SICKNESS_BEN2_ID =
INJURY_COMP.N_INJURY_COMP_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert SICKNESS_BENEFIT2 because INJURY_COMP does not
exist.');
        END
 ;


   

CREATE TABLE SPECIAL_EQUIPMENT
(
        N_SPECIAL_EQUIP_ID    CHAR(16) NOT NULL, 
        C_SPECIAL_EQUIP       CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_ASSIGNMENT_ID       CHAR(16) NOT NULL
);



CREATE UNIQUE INDEX XTP39601 ON SPECIAL_EQUIPMENT
(
        N_SPECIAL_EQUIP_ID    ASC
);



ALTER TABLE SPECIAL_EQUIPMENT
ADD CONSTRAINT XTP39601  PRIMARY KEY (N_SPECIAL_EQUIP_ID);



ALTER TABLE SPECIAL_EQUIPMENT
ADD CONSTRAINT RTP39501  FOREIGN KEY (N_ASSIGNMENT_ID)
                REFERENCES ASSIGNMENT  (N_ASSIGNMENT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_SPECI AFTER INSERT ON SPECIAL_EQUIPMENT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE SPECIAL_EQUIPMENT
      SET
        SPECIAL_EQUIPMENT.N_ASSIGNMENT_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ASSIGNMENT
            WHERE
              new.N_ASSIGNMENT_ID = ASSIGNMENT.N_ASSIGNMENT_ID
        )
 ;


   

CREATE TABLE STRENGTH_ASSERTION
(
        N_ASSERTION_ID        CHAR(16) NOT NULL, 
        N_NEGOTIATION_ID      CHAR(16) NOT NULL, 
        C_TYPE                CHAR(5) NOT NULL, 
        C_USED_IND            CHAR(1) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        T_DESCRIPTION         VARCHAR(254) NOT NULL
);



CREATE UNIQUE INDEX XTP37701 ON STRENGTH_ASSERTION
(
        N_ASSERTION_ID        ASC
);



ALTER TABLE STRENGTH_ASSERTION
ADD CONSTRAINT XTP37701  PRIMARY KEY (N_ASSERTION_ID);



ALTER TABLE STRENGTH_ASSERTION
ADD CONSTRAINT RTP30906  FOREIGN KEY (N_NEGOTIATION_ID)
                REFERENCES NEGOTIATION  (N_NEGOTIATION_ID)
                ON DELETE RESTRICT;



   

CREATE TABLE STUB_COVGMATCH_OUT
(
        C_COV_MATCH_STATUS    CHAR(1) NOT NULL, 
        C_ERROR_STOP_N        CHAR(12) NOT NULL, 
        T_ERROR_MESSAGE       CHAR(50) NOT NULL, 
        C_MAJ_COV             CHAR(4) NOT NULL, 
        C_OFFICE_CLS          CHAR(2) NOT NULL, 
        C_SUB_CLS             CHAR(2) NOT NULL, 
        C_COV_CTLG_REFN       CHAR(12) NOT NULL, 
        C_STAT_FORMAT         CHAR(3) NOT NULL, 
        C_STAT_PLAN           CHAR(3) NOT NULL, 
        T_STAT_BLK_1          CHAR(53) NOT NULL, 
        T_STAT_BLK_2          CHAR(53) NOT NULL, 
        T_STAT_BLK_3          CHAR(53) NOT NULL, 
        T_STAT_BLK_4          CHAR(53) NOT NULL, 
        N_POL_COV_ID          CHAR(16) NOT NULL
);



   

CREATE TABLE STUB_LEGACYMSG_IN
(
        C_MSG_ID              CHAR(24) NOT NULL, 
        T_FUNC_NAME           CHAR(20) NOT NULL, 
        T_MSG_DATA            CLOB NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        T_MSG_DATA_REF        ROWID NOT NULL
                GENERATED ALWAYS 
);



   

CREATE TABLE STUB_POLDUPS_OUT
(
        N_POLICY_NUMBER       CHAR(12) NOT NULL, 
        M_INSURED_NAME        CHAR(80) NOT NULL, 
        N_OFFERING_NUMBER     CHAR(12) NOT NULL, 
        C_PTYP_UNDWRTR_CDE    CHAR(5) NOT NULL, 
        C_PTYP_UNDWRTR_LIT    CHAR(20) NOT NULL, 
        C_POLICY_STAT_CDE     CHAR(5) NOT NULL, 
        C_POLICY_STAT_LIT     CHAR(15) NOT NULL, 
        D_EFF_DATE            TIMESTAMP NOT NULL, 
        D_EXP_DATE            TIMESTAMP NOT NULL, 
        C_CLMS_MADE_IND       CHAR(1) NOT NULL, 
        C_WRITING_COY_CDE     CHAR(5) NOT NULL, 
        C_CLMS_MD_COV_TRGR    CHAR(5) NOT NULL, 
        M_FILING_NAME         CHAR(80) NOT NULL
);



   

CREATE TABLE SUB_INJ_CMP_RECPAY
(
        N_SUB_INJ_C_RPY_ID    CHAR(16) NOT NULL, 
        N_INJ_C_REC_PAY_ID    CHAR(16) NOT NULL, 
        N_INS_INVL_ID         CHAR(16) NOT NULL DEFAULT '', 
        C_PAYEE_TYPE          CHAR(5) NOT NULL DEFAULT '', 
        M_PAYEE_FIRST_NAME    CHAR(32) NOT NULL DEFAULT '', 
        M_PAYEE_LAST_NAME     CHAR(32) NOT NULL DEFAULT '', 
        M_PAYEE_ORG_NAME      CHAR(32) NOT NULL DEFAULT '', 
        N_PAYEE_CPR_CVR       CHAR(10) NOT NULL DEFAULT '', 
        C_NEMKONTO_IND        CHAR(1) NOT NULL DEFAULT 'N', 
        C_FOREIGN_ACCT_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        N_EFT_REG_NO          CHAR(8) NOT NULL DEFAULT '', 
        N_EFT_ACCOUNT_NO      CHAR(16) NOT NULL DEFAULT '', 
        A_PAYEE_AMT           DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_PAYEE_UOM           CHAR(5) NOT NULL DEFAULT 'DKK', 
        D_START_DT            TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        D_END_DT              TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        D_SAP_START_DT        TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        D_SAP_END_DT          TIMESTAMP NOT NULL DEFAULT '2999-12-31-00.00.00.000000', 
        C_SAP_PAYMENT_TYPE    CHAR(5) NOT NULL DEFAULT '', 
        C_SAP_DED_TYPE        CHAR(5) NOT NULL DEFAULT '', 
        C_ALLOWANCE_STATUS    CHAR(5) NOT NULL DEFAULT '', 
        C_END_CODE            CHAR(5) NOT NULL DEFAULT '', 
        C_1ST_TIME_REASON     CHAR(5) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_IBAN                VARCHAR(42) NOT NULL DEFAULT '', 
        N_SWIFT               CHAR(11) NOT NULL DEFAULT '', 
        D_CONTROL_DT          TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        T_CONTROL_TXT         VARCHAR(100) NOT NULL DEFAULT '', 
        T_SAP_PENSION_KEY     CHAR(8) NOT NULL DEFAULT '', 
        N_FOREIGN_ZIP_CODE    VARCHAR(32) NOT NULL DEFAULT '', 
        C_MANUAL_ENDED_IND    CHAR(1) NOT NULL DEFAULT 'N', 
        D_REVERSAL_DT         TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000'
);



CREATE UNIQUE INDEX XTP65101 ON SUB_INJ_CMP_RECPAY
(
        N_SUB_INJ_C_RPY_ID    ASC
)
         CLUSTER;



ALTER TABLE SUB_INJ_CMP_RECPAY
ADD CONSTRAINT XTP65101  PRIMARY KEY (N_SUB_INJ_C_RPY_ID);



ALTER TABLE SUB_INJ_CMP_RECPAY
ADD CONSTRAINT RTP65001  FOREIGN KEY (N_INJ_C_REC_PAY_ID)
                REFERENCES INJ_COMP_REC_PYMNT  (N_INJ_C_REC_PAY_ID)
                ON DELETE RESTRICT;



ALTER TABLE SUB_INJ_CMP_RECPAY
ADD CONSTRAINT RTP28319  FOREIGN KEY (N_INS_INVL_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_SUB_I AFTER INSERT ON SUB_INJ_CMP_RECPAY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE SUB_INJ_CMP_RECPAY
      SET
        SUB_INJ_CMP_RECPAY.N_INS_INVL_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INS_INVOLVEMENT
            WHERE
              new.N_INS_INVL_ID = INS_INVOLVEMENT.N_INS_INVL_ID
        )
 ;

CREATE TRIGGER tI_SUB_2 AFTER INSERT ON SUB_INJ_CMP_RECPAY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INJ_COMP_REC_PYMNT WHERE new.N_INJ_C_REC_PAY_ID =
INJ_COMP_REC_PYMNT.N_INJ_C_REC_PAY_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert SUB_INJ_CMP_RECPAY because INJ_COMP_REC_PYMNT does
not exist.');
        END
 ;


   

CREATE TABLE SUB_ITEM_INS_SUM
(
        N_SUB_ITEM_INSS_ID    CHAR(16) NOT NULL, 
        N_ITEM_ID             CHAR(16) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL DEFAULT '', 
        C_INCIDENT_TYPE       CHAR(5) NOT NULL DEFAULT '', 
        C_GROUP_NAME          CHAR(5) NOT NULL, 
        A_DEATH_SUM           DECIMAL(19, 6), 
        C_DEATH_SUM_UOM       CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_DISABILITY_SUM      DECIMAL(19, 6), 
        C_DISABILITY_UOM      CHAR(5) NOT NULL DEFAULT 'DKK', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP65401 ON SUB_ITEM_INS_SUM
(
        N_SUB_ITEM_INSS_ID    ASC
);



ALTER TABLE SUB_ITEM_INS_SUM
ADD CONSTRAINT XTP65401  PRIMARY KEY (N_SUB_ITEM_INSS_ID);



ALTER TABLE SUB_ITEM_INS_SUM
ADD CONSTRAINT RTP29121  FOREIGN KEY (N_ITEM_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE SUB_ITEM_INS_SUM
ADD CONSTRAINT XTP22235  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_SUB_I AFTER INSERT ON SUB_ITEM_INS_SUM
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM CLAIM WHERE new.N_CLAIM_ID = CLAIM.N_CLAIM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert SUB_ITEM_INS_SUM because CLAIM does not exist.');
        END
 ;

CREATE TRIGGER tI_SUB_2 AFTER INSERT ON SUB_ITEM_INS_SUM
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ITEM WHERE new.N_ITEM_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert SUB_ITEM_INS_SUM because ITEM does not exist.');
        END
 ;


   

CREATE TABLE SUB_LINE_TOPALARM
(
        N_LINE_TOPALARM_ID    CHAR(16) NOT NULL, 
        N_LINE_ID             CHAR(16) NOT NULL, 
        C_TASK_INDICATOR      VARCHAR(20) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP64901 ON SUB_LINE_TOPALARM
(
        N_LINE_TOPALARM_ID    ASC
);



ALTER TABLE SUB_LINE_TOPALARM
ADD CONSTRAINT XTP64901  PRIMARY KEY (N_LINE_TOPALARM_ID);



ALTER TABLE SUB_LINE_TOPALARM
ADD CONSTRAINT RTP30012  FOREIGN KEY (N_LINE_ID)
                REFERENCES LINE  (N_LINE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_SUB_L AFTER INSERT ON SUB_LINE_TOPALARM
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM LINE WHERE new.N_LINE_ID = LINE.N_LINE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert SUB_LINE_TOPALARM because LINE does not exist.');
        END
 ;


   

CREATE TABLE SUB_LOSS_INJURY_TP
(
        N_SUB_LO_INJ_TP_ID    CHAR(16) NOT NULL, 
        N_LOSS_ID             CHAR(16) NOT NULL, 
        C_INJ_DISS_TYPE_AC    CHAR(5) NOT NULL DEFAULT '', 
        C_INJ_DISS_TYPE_TR    CHAR(5) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP20101 ON SUB_LOSS_INJURY_TP
(
        N_SUB_LO_INJ_TP_ID    ASC
);



ALTER TABLE SUB_LOSS_INJURY_TP
ADD CONSTRAINT XTP20101  PRIMARY KEY (N_SUB_LO_INJ_TP_ID);



ALTER TABLE SUB_LOSS_INJURY_TP
ADD CONSTRAINT RTP30806  FOREIGN KEY (N_LOSS_ID)
                REFERENCES LOSS  (N_LOSS_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_SUB_L AFTER INSERT ON SUB_LOSS_INJURY_TP
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM LOSS WHERE new.N_LOSS_ID = LOSS.N_LOSS_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert SUB_LOSS_INJURY_TP because LOSS does not exist.');
        END
 ;


   

CREATE TABLE SUB_LOSS_TRANSPORT
(
        N_LOSS_TRANSPRT_ID    CHAR(16) NOT NULL, 
        N_LOSS_ID             CHAR(16) NOT NULL, 
        C_MEANS_TRANSPORT     CHAR(5) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP20201 ON SUB_LOSS_TRANSPORT
(
        N_LOSS_TRANSPRT_ID    ASC
);



ALTER TABLE SUB_LOSS_TRANSPORT
ADD CONSTRAINT XTP20201  PRIMARY KEY (N_LOSS_TRANSPRT_ID);



ALTER TABLE SUB_LOSS_TRANSPORT
ADD CONSTRAINT RTP30805  FOREIGN KEY (N_LOSS_ID)
                REFERENCES LOSS  (N_LOSS_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_SUB_L AFTER INSERT ON SUB_LOSS_TRANSPORT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM LOSS WHERE new.N_LOSS_ID = LOSS.N_LOSS_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert SUB_LOSS_TRANSPORT because LOSS does not exist.');
        END
 ;


   

CREATE TABLE SUP_CLAIM_TOPALARM
(
        N_CLAIM_TOPALRM_ID    CHAR(16) NOT NULL, 
        N_TOPALARM_NO         CHAR(8) NOT NULL DEFAULT '', 
        N_TOPALARM_EXT_NO     CHAR(11) NOT NULL DEFAULT '', 
        C_TOPALARM_STATUS     CHAR(5) NOT NULL DEFAULT '', 
        C_ASSISTANCE_TYPE     CHAR(5) NOT NULL DEFAULT '', 
        C_HR_GNTY_CASE_IND    CHAR(1) NOT NULL DEFAULT '', 
        C_HR_GNTY_DIS_IND     CHAR(1) NOT NULL DEFAULT '', 
        C_HR_GNTY_CASE_RSN    CHAR(5) NOT NULL DEFAULT '', 
        C_SERVICE_LEVEL       CHAR(5) NOT NULL DEFAULT '', 
        D_EARLIEST_TS         TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        D_LATEST_TS           TIMESTAMP NOT NULL DEFAULT '2999-12-31-00.00.00.000000', 
        M_STREET_NAME         CHAR(32) NOT NULL DEFAULT '', 
        M_STREET_NO           CHAR(9) NOT NULL DEFAULT '', 
        M_FLOOR               CHAR(12) NOT NULL DEFAULT '', 
        M_CITY_NAME           CHAR(32) NOT NULL DEFAULT '', 
        M_SUB_CITY_NAME       CHAR(32) NOT NULL DEFAULT '', 
        C_POSTAL_CODE         CHAR(9) NOT NULL DEFAULT '', 
        C_COUNTRY_CODE        CHAR(3) NOT NULL DEFAULT '', 
        T_LONG_REPORT         VARCHAR(5000) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_RESCUE_IND          CHAR(1) NOT NULL DEFAULT '', 
        C_PUMP_WORK_IND       CHAR(1) NOT NULL DEFAULT '', 
        C_RENT_GEN_IND        CHAR(1) NOT NULL DEFAULT '', 
        C_SNOW_CLEAR_IND      CHAR(1) NOT NULL DEFAULT '', 
        T_SUPPLIER_INFO       VARCHAR(254) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP64801 ON SUP_CLAIM_TOPALARM
(
        N_CLAIM_TOPALRM_ID    ASC
);



CREATE INDEX XTP64802 ON SUP_CLAIM_TOPALARM
(
        N_TOPALARM_NO         ASC
);



CREATE INDEX XTP64803 ON SUP_CLAIM_TOPALARM
(
        N_CLAIM_TOPALRM_ID    ASC, 
        C_ASSISTANCE_TYPE     ASC, 
        C_RESCUE_IND          ASC, 
        C_PUMP_WORK_IND       ASC, 
        C_RENT_GEN_IND        ASC, 
        C_SNOW_CLEAR_IND      ASC
);



ALTER TABLE SUP_CLAIM_TOPALARM
ADD CONSTRAINT XTP64801  PRIMARY KEY (N_CLAIM_TOPALRM_ID);



ALTER TABLE SUP_CLAIM_TOPALARM
ADD CONSTRAINT RTP22234  FOREIGN KEY (N_CLAIM_TOPALRM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_SUP_C AFTER INSERT ON SUP_CLAIM_TOPALARM
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM CLAIM WHERE new.N_CLAIM_TOPALRM_ID = CLAIM.N_CLAIM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert SUP_CLAIM_TOPALARM because CLAIM does not exist.');
        END
 ;


   

CREATE TABLE SUP_LOSS_TRAVEL
(
        N_SUP_LOSS_TRVL_ID    CHAR(16) NOT NULL, 
        C_FINAL_DESTINATN     CHAR(5) NOT NULL DEFAULT '', 
        D_DEPARTURE_TS        TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        D_RETURN_TS           TIMESTAMP NOT NULL DEFAULT '2999-12-31-00.00.00.000000', 
        C_PERSONS_INSURANC    CHAR(5) NOT NULL DEFAULT '', 
        C_PERSONS_CERTIFCT    CHAR(5) NOT NULL DEFAULT '', 
        A_JOURNEY_TOTAL       DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_JOURNEY_TOT_UOM     CHAR(5) NOT NULL DEFAULT 'DKK', 
        C_JOURNEY_PURPOSE     CHAR(5) NOT NULL DEFAULT '', 
        D_PURCHASE_TS         TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        D_CANCELLATION_TS     TIMESTAMP NOT NULL DEFAULT '2999-12-31-00.00.00.000000', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL, 
        D_REEXAMINATION_TS    TIMESTAMP NOT NULL, 
        D_END_REL_TS          TIMESTAMP NOT NULL
);



CREATE UNIQUE INDEX XTP20301 ON SUP_LOSS_TRAVEL
(
        N_SUP_LOSS_TRVL_ID    ASC
)
         CLUSTER;



ALTER TABLE SUP_LOSS_TRAVEL
ADD CONSTRAINT XTP20301  PRIMARY KEY (N_SUP_LOSS_TRVL_ID);



ALTER TABLE SUP_LOSS_TRAVEL
ADD CONSTRAINT RTP30804  FOREIGN KEY (N_SUP_LOSS_TRVL_ID)
                REFERENCES LOSS  (N_LOSS_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_SUP_L AFTER INSERT ON SUP_LOSS_TRAVEL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM LOSS WHERE new.N_SUP_LOSS_TRVL_ID = LOSS.N_LOSS_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert SUP_LOSS_TRAVEL because LOSS does not exist.');
        END
 ;


   

CREATE TABLE SUPP_INJURY_AC_TRA
(
        N_SUPP_INJUR_AT_ID    CHAR(16) NOT NULL, 
        F_MIN_DISAB_PCT       INTEGER NOT NULL DEFAULT 0, 
        A_DISABILITY_SUM      DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_DISABILITY_UOM      CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_DEATH_SUM           DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_DEATH_SUM_UOM       CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_DAILY_SUM           DECIMAL(19, 6), 
        C_DAILY_SUM_UOM       CHAR(5), 
        N_MAX_SB_DAYS         INTEGER, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL, 
        A_MAX_IMMDT_PYMNT     DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_MAX_IMMDT_PY_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_YEARLY_CAP_COMP     DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_YEARLY_CAP_C_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_MAX_CHLD_DSP_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_MAX_CHLD_DSP_UOM    VARCHAR(20) NOT NULL DEFAULT 'DKK', 
        C_VEHICLE_CAT         CHAR(5) NOT NULL DEFAULT '', 
        N_NR_PARENTS_DEAD     INTEGER NOT NULL DEFAULT 0
);



CREATE UNIQUE INDEX XTP64401 ON SUPP_INJURY_AC_TRA
(
        N_SUPP_INJUR_AT_ID    ASC
)
         CLUSTER;



ALTER TABLE SUPP_INJURY_AC_TRA
ADD CONSTRAINT XTP64401  PRIMARY KEY (N_SUPP_INJUR_AT_ID);



ALTER TABLE SUPP_INJURY_AC_TRA
ADD CONSTRAINT RTP23302  FOREIGN KEY (N_SUPP_INJUR_AT_ID)
                REFERENCES INJURY2  (N_INJURY2_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_SUPP_ AFTER INSERT ON SUPP_INJURY_AC_TRA
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INJURY2 WHERE new.N_SUPP_INJUR_AT_ID = INJURY2.N_INJURY2_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert SUPP_INJURY_AC_TRA because INJURY2 does not
exist.');
        END
 ;


   

CREATE TABLE SUPP_LOSS_OF_PR_AT
(
        N_SUPP_LOP_AT_ID      CHAR(16) NOT NULL, 
        F_ESTATE_TAX_PCT      DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        A_ESTATE_TAX_AMT      DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_ESTATE_TAX_UOM      CHAR(5) NOT NULL DEFAULT 'DKK', 
        F_IMDTE_PAYMNT_PCT    DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        A_IMDTE_PAYMNT_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_IMDTE_PAYMNT_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_CALC_CAP_COMP       DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_CLC_CAP_COMP_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL, 
        A_CALC_IMMDT_P_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_CALC_IMMDT_P_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        F_O_IMMDTPYMNT_PCT    DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        F_T_IMMDTPYMNT_PCT    DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        A_T_IMMDTPYMNT_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_T_IMMDTPYMNT_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_CALC_DTHSUM_AMT     DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_CALC_DTHSUM_UOM     CHAR(5) NOT NULL DEFAULT 'DKK'
);



CREATE UNIQUE INDEX XTP64601 ON SUPP_LOSS_OF_PR_AT
(
        N_SUPP_LOP_AT_ID      ASC
)
         CLUSTER;



ALTER TABLE SUPP_LOSS_OF_PR_AT
ADD CONSTRAINT XTP64601  PRIMARY KEY (N_SUPP_LOP_AT_ID);



ALTER TABLE SUPP_LOSS_OF_PR_AT
ADD CONSTRAINT RTP46101  FOREIGN KEY (N_SUPP_LOP_AT_ID)
                REFERENCES LOSS_OF_PROVIDER  (N_LOSS_OF_PROVD_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_SUPP_ AFTER INSERT ON SUPP_LOSS_OF_PR_AT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM LOSS_OF_PROVIDER WHERE new.N_SUPP_LOP_AT_ID =
LOSS_OF_PROVIDER.N_LOSS_OF_PROVD_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert SUPP_LOSS_OF_PR_AT because LOSS_OF_PROVIDER does not
exist.');
        END
 ;


   

CREATE TABLE SUPP_PERM_DISAB_AT
(
        N_SUPP_P_DIS_AT_ID    CHAR(16) NOT NULL, 
        A_PRESENT_PREMIUM     DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_PRSNT_PRMIUM_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_CORRECT_PREMIUM     DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_CORRECT_PREM_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        N_TC_VALUE            DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        A_CALC_AGE_DEDUCT     DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_CALC_AGE_DED_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_CALC_DISAB_AMT      DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_CALC_DISAB_UOM      CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_CALC_DOUBLE_COMP    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_CALC_DBL_CMP_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_PROG_COMP_DEDUCT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_PROG_COMP_UOM       CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_DISPOSABLE_AMT      DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_DISPOSE_AMT_UOM     CHAR(5) NOT NULL DEFAULT 'DKK', 
        F_MIN_DISAB_PCT       INTEGER NOT NULL DEFAULT 0, 
        A_DISABILITY_SUM      DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_DISABILITY_UOM      CHAR(5) NOT NULL DEFAULT 'DKK', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL, 
        A_CLC_PRG_PR_P_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_CLC_PRG_PR_P_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_CLC_DBL_PR_P_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_CLC_DBL_PR_P_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_T_CALC_DISAB_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_T_CALC_DISAB_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_CALC_DISP_AMT       DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_CALC_DISP_UOM       CHAR(5) NOT NULL DEFAULT 'DKK'
);



CREATE UNIQUE INDEX XTP64501 ON SUPP_PERM_DISAB_AT
(
        N_SUPP_P_DIS_AT_ID    ASC
)
         CLUSTER;



ALTER TABLE SUPP_PERM_DISAB_AT
ADD CONSTRAINT XTP64501  PRIMARY KEY (N_SUPP_P_DIS_AT_ID);



ALTER TABLE SUPP_PERM_DISAB_AT
ADD CONSTRAINT RTP45403  FOREIGN KEY (N_SUPP_P_DIS_AT_ID)
                REFERENCES PERMANNT_DISABILTY  (N_PERM_DISABLTY_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_SUPP_ AFTER INSERT ON SUPP_PERM_DISAB_AT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM PERMANNT_DISABILTY WHERE new.N_SUPP_P_DIS_AT_ID =
PERMANNT_DISABILTY.N_PERM_DISABLTY_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert SUPP_PERM_DISAB_AT because PERMANNT_DISABILTY does
not exist.');
        END
 ;


   

CREATE TABLE SUPPLIER
(
        N_SUPPLIER_ID         CHAR(16) NOT NULL, 
        N_CUSTOMER_NUMBER     CHAR(7) NOT NULL, 
        D_OPEN_MON_DT         TIMESTAMP NOT NULL, 
        D_CLOSE_MON_DT        TIMESTAMP NOT NULL, 
        D_OPEN_TUES_DT        TIMESTAMP NOT NULL, 
        D_CLOSE_TUES_DT       TIMESTAMP NOT NULL, 
        D_OPEN_WEDNES_DT      TIMESTAMP NOT NULL, 
        D_CLOSE_WEDNES_DT     TIMESTAMP NOT NULL, 
        D_OPEN_THURS_DT       TIMESTAMP NOT NULL, 
        D_CLOSE_THURS_DT      TIMESTAMP NOT NULL, 
        D_OPEN_FRI_DT         TIMESTAMP NOT NULL, 
        D_CLOSE_FRI_DT        TIMESTAMP NOT NULL, 
        D_OPEN_SATUR_DT       TIMESTAMP NOT NULL, 
        D_CLOSE_SATUR_DT      TIMESTAMP NOT NULL, 
        D_OPEN_SUN_DT         TIMESTAMP NOT NULL, 
        D_CLOSE_SUN_DT        TIMESTAMP NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        M_AGREED_BY_INIT      CHAR(4) NOT NULL DEFAULT '', 
        D_AGREEMENT_DATE      TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        C_MULTI_ANN_AGREEM    CHAR(5) NOT NULL DEFAULT '', 
        D_NEXT_UPDATE_DATE    TIMESTAMP NOT NULL DEFAULT '2999-12-31-00.00.00.000000', 
        D_RENEGOTIATION_DT    TIMESTAMP NOT NULL DEFAULT '2999-12-31-00.00.00.000000', 
        C_PAYMNT_AGREE_TYP    CHAR(5) NOT NULL DEFAULT '', 
        C_LOAN_ITEM_IND       CHAR(1) NOT NULL DEFAULT '', 
        C_PHOTO_ASSESS_IND    CHAR(1) NOT NULL DEFAULT '', 
        C_REPAIR_CONTR_IND    CHAR(1) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP43701 ON SUPPLIER
(
        N_SUPPLIER_ID         ASC
)
         CLUSTER;



CREATE INDEX XTP43702 ON SUPPLIER
(
        N_CUSTOMER_NUMBER     ASC, 
        C_RCD_DEL             ASC
);



ALTER TABLE SUPPLIER
ADD CONSTRAINT XTP43701  PRIMARY KEY (N_SUPPLIER_ID);



ALTER TABLE SUPPLIER_DTL
ADD CONSTRAINT RTP43704  FOREIGN KEY (N_SUPPLIER_ID)
                REFERENCES SUPPLIER  (N_SUPPLIER_ID)
                ON DELETE RESTRICT;



ALTER TABLE ASSIGNMENT
ADD CONSTRAINT RTP43701  FOREIGN KEY (N_SUPPLIER_ID)
                REFERENCES SUPPLIER  (N_SUPPLIER_ID)
                ON DELETE RESTRICT;



ALTER TABLE UNAVAILABILITY
ADD CONSTRAINT RTP43705  FOREIGN KEY (N_SUPPLIER_ID)
                REFERENCES SUPPLIER  (N_SUPPLIER_ID)
                ON DELETE RESTRICT;



ALTER TABLE CONTACT
ADD CONSTRAINT RTP43702  FOREIGN KEY (N_SUPPLIER_ID)
                REFERENCES SUPPLIER  (N_SUPPLIER_ID)
                ON DELETE RESTRICT;



ALTER TABLE SERVICE_INFO
ADD CONSTRAINT RTP43706  FOREIGN KEY (N_SUPPLIER_ID)
                REFERENCES SUPPLIER  (N_SUPPLIER_ID)
                ON DELETE RESTRICT;



ALTER TABLE PRICE
ADD CONSTRAINT RTP43703  FOREIGN KEY (N_SUPPLIER_ID)
                REFERENCES SUPPLIER  (N_SUPPLIER_ID)
                ON DELETE RESTRICT;



ALTER TABLE AUTOTAKS_REPORT
ADD CONSTRAINT RTP43707  FOREIGN KEY (N_SUPPLIER_ID)
                REFERENCES SUPPLIER  (N_SUPPLIER_ID)
                ON DELETE RESTRICT;



ALTER TABLE AUTOTAKS_REPORT
ADD CONSTRAINT RTP43708  FOREIGN KEY (N_SUPP_HEADOFF_ID)
                REFERENCES SUPPLIER  (N_SUPPLIER_ID)
                ON DELETE RESTRICT;



ALTER TABLE SUPPLIER_WORKSHOP
ADD CONSTRAINT RTP43709  FOREIGN KEY (N_SUPPLIER_ID)
                REFERENCES SUPPLIER  (N_SUPPLIER_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tD_SUPPL AFTER DELETE ON SUPPLIER
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM SUPPLIER_WORKSHOP WHERE SUPPLIER_WORKSHOP.N_SUPPLIER_ID =
old.N_SUPPLIER_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete SUPPLIER because SUPPLIER_WORKSHOP exists.');
        END
 ;

CREATE TRIGGER tD_SUPP2 AFTER DELETE ON SUPPLIER
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM AUTOTAKS_REPORT WHERE AUTOTAKS_REPORT.N_SUPP_HEADOFF_ID =
old.N_SUPPLIER_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete SUPPLIER because AUTOTAKS_REPORT exists.');
        END
 ;

CREATE TRIGGER tD_SUPP3 AFTER DELETE ON SUPPLIER
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM AUTOTAKS_REPORT WHERE AUTOTAKS_REPORT.N_SUPPLIER_ID =
old.N_SUPPLIER_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete SUPPLIER because AUTOTAKS_REPORT exists.');
        END
 ;

CREATE TRIGGER tD_SUPP4 AFTER DELETE ON SUPPLIER
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM PRICE WHERE PRICE.N_SUPPLIER_ID = old.N_SUPPLIER_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete SUPPLIER because PRICE exists.');
        END
 ;

CREATE TRIGGER tD_SUPP5 AFTER DELETE ON SUPPLIER
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM SERVICE_INFO WHERE SERVICE_INFO.N_SUPPLIER_ID =
old.N_SUPPLIER_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete SUPPLIER because SERVICE_INFO exists.');
        END
 ;

CREATE TRIGGER tD_SUPP6 AFTER DELETE ON SUPPLIER
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM CONTACT WHERE CONTACT.N_SUPPLIER_ID = old.N_SUPPLIER_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete SUPPLIER because CONTACT exists.');
        END
 ;

CREATE TRIGGER tD_SUPP7 AFTER DELETE ON SUPPLIER
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM UNAVAILABILITY WHERE UNAVAILABILITY.N_SUPPLIER_ID =
old.N_SUPPLIER_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete SUPPLIER because UNAVAILABILITY exists.');
        END
 ;

CREATE TRIGGER tD_SUPP8 AFTER DELETE ON SUPPLIER
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM ASSIGNMENT WHERE ASSIGNMENT.N_SUPPLIER_ID = old.N_SUPPLIER_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete SUPPLIER because ASSIGNMENT exists.');
        END
 ;

CREATE TRIGGER tD_SUPP9 AFTER DELETE ON SUPPLIER
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM SUPPLIER_DTL WHERE SUPPLIER_DTL.N_SUPPLIER_ID =
old.N_SUPPLIER_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete SUPPLIER because SUPPLIER_DTL exists.');
        END
 ;


   

CREATE TABLE SUPPLIER_DTL
(
        N_SUPPLIER_DTL_ID     CHAR(16) NOT NULL, 
        N_SUPPLIER_ID         CHAR(16) NOT NULL, 
        C_SUPP_TYPE           CHAR(5) NOT NULL, 
        C_PREFERENCE          CHAR(5) NOT NULL, 
        C_PRICE_RATING        CHAR(5) NOT NULL, 
        C_CUST_SERVICE        CHAR(5) NOT NULL, 
        D_EFFECTIVE_DATE      TIMESTAMP NOT NULL, 
        D_EXPIRATION_DATE     TIMESTAMP NOT NULL, 
        C_MOBILE_SERVC_IND    CHAR(1) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_RANK_PRIORITY       CHAR(5) NOT NULL DEFAULT '4', 
        N_FROM_POSTAL_CODE    INTEGER DEFAULT 1, 
        N_TO_POSTAL_CODE      INTEGER DEFAULT 9999, 
        T_COMMENT             VARCHAR(50) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP43801 ON SUPPLIER_DTL
(
        N_SUPPLIER_DTL_ID     ASC
);



CREATE INDEX XTP43803 ON SUPPLIER_DTL
(
        C_SUPP_TYPE           ASC, 
        D_EFFECTIVE_DATE      ASC, 
        D_EXPIRATION_DATE     ASC, 
        C_RCD_DEL             ASC, 
        N_SUPPLIER_ID         ASC
);



CREATE INDEX XTP43804 ON SUPPLIER_DTL
(
        C_SUPP_TYPE           ASC, 
        C_MOBILE_SERVC_IND    ASC, 
        N_FROM_POSTAL_CODE    ASC, 
        N_TO_POSTAL_CODE      ASC, 
        C_RCD_DEL             ASC, 
        N_SUPPLIER_ID         ASC
);



CREATE INDEX XTP43807 ON SUPPLIER_DTL
(
        C_SUPP_TYPE           ASC, 
        C_RANK_PRIORITY       ASC, 
        C_PREFERENCE          ASC, 
        N_SUPPLIER_ID         ASC
);



ALTER TABLE SUPPLIER_DTL
ADD CONSTRAINT XTP43801  PRIMARY KEY (N_SUPPLIER_DTL_ID);



ALTER TABLE SUPPLIER_DTL
ADD CONSTRAINT RTP43704  FOREIGN KEY (N_SUPPLIER_ID)
                REFERENCES SUPPLIER  (N_SUPPLIER_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_SUPPL AFTER INSERT ON SUPPLIER_DTL
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE SUPPLIER_DTL
      SET
        SUPPLIER_DTL.N_SUPPLIER_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM SUPPLIER
            WHERE
              new.N_SUPPLIER_ID = SUPPLIER.N_SUPPLIER_ID
        )
 ;


   

CREATE TABLE SUPPLIER_WORKSHOP
(
        N_SUP_WORKSHOP_ID     CHAR(16) NOT NULL, 
        N_SUPPLIER_ID         CHAR(16) NOT NULL, 
        N_WORKSHOP_NO         INTEGER NOT NULL DEFAULT 0, 
        C_EQUIPMENT_CLASS     CHAR(5) NOT NULL DEFAULT '', 
        C_INTEGRAT_REP_IND    CHAR(1) NOT NULL DEFAULT '', 
        C_WWW_BOOKING_IND     CHAR(1) NOT NULL DEFAULT '', 
        C_WS_CONTROL_IND      CHAR(1) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP43601 ON SUPPLIER_WORKSHOP
(
        N_SUP_WORKSHOP_ID     ASC, 
        N_SUPPLIER_ID         ASC
)
         CLUSTER;



ALTER TABLE SUPPLIER_WORKSHOP
ADD CONSTRAINT XTP43601  PRIMARY KEY (N_SUP_WORKSHOP_ID, N_SUPPLIER_ID);



ALTER TABLE SUPPLIER_WORKSHOP
ADD CONSTRAINT RTP43709  FOREIGN KEY (N_SUPPLIER_ID)
                REFERENCES SUPPLIER  (N_SUPPLIER_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_SUPPL AFTER INSERT ON SUPPLIER_WORKSHOP
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM SUPPLIER WHERE new.N_SUPPLIER_ID = SUPPLIER.N_SUPPLIER_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert SUPPLIER_WORKSHOP because SUPPLIER does not
exist.');
        END
 ;


   

CREATE TABLE TASK_CATEGORY
(
        N_TASK_CATEGORY_ID    CHAR(16) NOT NULL, 
        N_TASK_ID             CHAR(16) NOT NULL, 
        C_CATEGORY            CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL
);



CREATE UNIQUE INDEX XTP38101 ON TASK_CATEGORY
(
        N_TASK_CATEGORY_ID    ASC
);



CREATE INDEX XTP38102 ON TASK_CATEGORY
(
        C_CATEGORY            ASC
);



ALTER TABLE TASK_CATEGORY
ADD CONSTRAINT XTP38101  PRIMARY KEY (N_TASK_CATEGORY_ID);



ALTER TABLE TASK_CATEGORY
ADD CONSTRAINT RTP21903  FOREIGN KEY (N_TASK_ID)
                REFERENCES CCS_TASK  (N_TASK_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_TASK_ AFTER INSERT ON TASK_CATEGORY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM CCS_TASK WHERE new.N_TASK_ID = CCS_TASK.N_TASK_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert TASK_CATEGORY because CCS_TASK does not exist.');
        END
 ;

CREATE TRIGGER tU_TASK_ AFTER UPDATE ON TASK_CATEGORY
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM CCS_TASK WHERE new.N_TASK_ID = CCS_TASK.N_TASK_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update TASK_CATEGORY because CCS_TASK does not exist.');
        END
 ;


   

CREATE TABLE TREATMENT_OFFER
(
        N_TREATMENT_OFF_ID    CHAR(16) NOT NULL DEFAULT '', 
        N_PERM_DISABLTY_ID    CHAR(16) NOT NULL DEFAULT '', 
        C_PROACTIVE_OFFER     CHAR(5) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0
);



CREATE UNIQUE INDEX XTP45701 ON TREATMENT_OFFER
(
        N_TREATMENT_OFF_ID    ASC
)
         CLUSTER;



ALTER TABLE TREATMENT_OFFER
ADD CONSTRAINT XTP45701  PRIMARY KEY (N_TREATMENT_OFF_ID);



ALTER TABLE TREATMENT_OFFER
ADD CONSTRAINT RTP45401  FOREIGN KEY (N_PERM_DISABLTY_ID)
                REFERENCES PERMANNT_DISABILTY  (N_PERM_DISABLTY_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_TREAT AFTER INSERT ON TREATMENT_OFFER
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM PERMANNT_DISABILTY WHERE new.N_PERM_DISABLTY_ID =
PERMANNT_DISABILTY.N_PERM_DISABLTY_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert TREATMENT_OFFER because PERMANNT_DISABILTY does not
exist.');
        END
 ;


   

CREATE TABLE TREATMENT_PLAN
(
        N_TREATMNT_PLAN_ID    CHAR(16) NOT NULL DEFAULT '', 
        D_DATE_OF_ONSET       TIMESTAMP DEFAULT NULL, 
        D_END_DT              TIMESTAMP DEFAULT NULL, 
        C_TREATMENT           CHAR(5) NOT NULL DEFAULT '', 
        C_EQUIPMENT           CHAR(5) NOT NULL DEFAULT '', 
        T_MEDICINE_DESC       VARCHAR(700) DEFAULT NULL, 
        Q_NBR_TREATMENTS      INTEGER DEFAULT NULL, 
        C_PERMANENT_IND       CHAR(1) DEFAULT NULL, 
        C_OTHER_LOSS          CHAR(5) NOT NULL DEFAULT '', 
        A_ANNUAL_EXPENSE      DECIMAL(19, 6) DEFAULT NULL, 
        C_ANNUAL_EXP_UOM      CHAR(5) NOT NULL DEFAULT '', 
        C_FACTOR              CHAR(5) NOT NULL DEFAULT '', 
        N_PERM_DISABLTY_ID    CHAR(16) NOT NULL DEFAULT '', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL DEFAULT 0, 
        C_EXPIRY_NOTE_IND     CHAR(1) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP45501 ON TREATMENT_PLAN
(
        N_TREATMNT_PLAN_ID    ASC
);



CREATE INDEX XTP45504 ON TREATMENT_PLAN
(
        C_EXPIRY_NOTE_IND     ASC, 
        D_END_DT              ASC
);



ALTER TABLE TREATMENT_PLAN
ADD CONSTRAINT XTP45501  PRIMARY KEY (N_TREATMNT_PLAN_ID);



ALTER TABLE TREATMENT_PLAN
ADD CONSTRAINT RTP45302  FOREIGN KEY (N_TREATMNT_PLAN_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



ALTER TABLE TREATMENT_PLAN
ADD CONSTRAINT RTP45402  FOREIGN KEY (N_PERM_DISABLTY_ID)
                REFERENCES PERMANNT_DISABILTY  (N_PERM_DISABLTY_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_TREAT AFTER INSERT ON TREATMENT_PLAN
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE TREATMENT_PLAN
      SET
        TREATMENT_PLAN.N_PERM_DISABLTY_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM PERMANNT_DISABILTY
            WHERE
              new.N_PERM_DISABLTY_ID = PERMANNT_DISABILTY.N_PERM_DISABLTY_ID
        )
 ;

CREATE TRIGGER tI_TREA2 AFTER INSERT ON TREATMENT_PLAN
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INJURY_COMP WHERE new.N_TREATMNT_PLAN_ID =
INJURY_COMP.N_INJURY_COMP_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert TREATMENT_PLAN because INJURY_COMP does not
exist.');
        END
 ;


   

CREATE TABLE TREATMENTS
(
        N_TREATMENT_ID        CHAR(16) NOT NULL, 
        N_CLAIMANT_ROLE_ID    CHAR(16) NOT NULL, 
        N_TYP_CODE            CHAR(5) NOT NULL, 
        D_FROM_DT             TIMESTAMP NOT NULL, 
        N_PROVIDER_ROLE_ID    CHAR(16) NOT NULL, 
        C_ACTIVE_IND          CHAR(1) NOT NULL, 
        C_EFFECT              CHAR(5) NOT NULL, 
        A_COST_AMT            DECIMAL(19, 6), 
        C_COST_UOM            CHAR(5) NOT NULL, 
        C_TRANSPORTATION      CHAR(5) NOT NULL, 
        Q_DISTANCE            DECIMAL(19, 6), 
        A_TRANSP_COST_AMT     DECIMAL(19, 6), 
        C_TRANSP_COST_UOM     CHAR(5) NOT NULL, 
        A_TOT_BENEFIT_AMT     DECIMAL(19, 6), 
        C_TOT_BENEFIT_UOM     CHAR(5) NOT NULL, 
        D_TO_DT               TIMESTAMP NOT NULL, 
        Q_VISITS              SMALLINT, 
        C_DECISION_CODE       CHAR(5) NOT NULL, 
        D_RCVD_DT             TIMESTAMP NOT NULL, 
        T_DESC                VARCHAR(100) NOT NULL, 
        N_LAST_MAN_DEPT_ID    CHAR(4) NOT NULL, 
        N_LAST_WORKDEPT_ID    CHAR(5) NOT NULL, 
        N_CREATED_OE          CHAR(16) NOT NULL, 
        N_CREATED_DEPT        CHAR(4) NOT NULL, 
        N_CREATED_WORKDEPT    CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP38401 ON TREATMENTS
(
        N_TREATMENT_ID        ASC
);



ALTER TABLE TREATMENTS
ADD CONSTRAINT XTP38401  PRIMARY KEY (N_TREATMENT_ID);



ALTER TABLE TREATMENTS
ADD CONSTRAINT RTP23208  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE TREATMENTS
ADD CONSTRAINT RTP28313  FOREIGN KEY (N_PROVIDER_ROLE_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE SET NULL;



ALTER TABLE DIAGNOSTIC_TEST
ADD CONSTRAINT RTP38401  FOREIGN KEY (N_TREATMENT_ID)
                REFERENCES TREATMENTS  (N_TREATMENT_ID)
                ON DELETE RESTRICT;



ALTER TABLE INJ_TREATMENT_XREF
ADD CONSTRAINT RTP38402  FOREIGN KEY (N_TREATMENT_ID)
                REFERENCES TREATMENTS  (N_TREATMENT_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_TREAT AFTER INSERT ON TREATMENTS
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_CLAIMANT_ROLE_ID =
CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert TREATMENTS because CLAIMANT_ROLE does not exist.');
        END
 ;

CREATE TRIGGER tI_TREA2 AFTER INSERT ON TREATMENTS
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE TREATMENTS
      SET
        TREATMENTS.N_PROVIDER_ROLE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INS_INVOLVEMENT
            WHERE
              new.N_PROVIDER_ROLE_ID = INS_INVOLVEMENT.N_INS_INVL_ID
        )
 ;

CREATE TRIGGER tD_TREAT AFTER DELETE ON TREATMENTS
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INJ_TREATMENT_XREF WHERE INJ_TREATMENT_XREF.N_TREATMENT_ID =
old.N_TREATMENT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete TREATMENTS because INJ_TREATMENT_XREF exists.');
        END
 ;

CREATE TRIGGER tD_TREA2 AFTER DELETE ON TREATMENTS
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM DIAGNOSTIC_TEST WHERE DIAGNOSTIC_TEST.N_TREATMENT_ID =
old.N_TREATMENT_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete TREATMENTS because DIAGNOSTIC_TEST exists.');
        END
 ;

CREATE TRIGGER tU_TREAT AFTER UPDATE ON TREATMENTS
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM TREATMENTS WHERE new.N_TREATMENT_ID <> old.N_TREATMENT_ID)) AND

     (0 < (SELECT count(*) FROM INJ_TREATMENT_XREF WHERE INJ_TREATMENT_XREF.N_TREATMENT_ID =
old.N_TREATMENT_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update TREATMENTS because INJ_TREATMENT_XREF exists.');
        END
 ;

CREATE TRIGGER tU_TREA2 AFTER UPDATE ON TREATMENTS
     FOR EACH ROW MODE DB2SQL
   WHEN (0 < ((SELECT count(*) FROM TREATMENTS WHERE new.N_TREATMENT_ID <> old.N_TREATMENT_ID)) AND

     (0 < (SELECT count(*) FROM DIAGNOSTIC_TEST WHERE DIAGNOSTIC_TEST.N_TREATMENT_ID =
old.N_TREATMENT_ID)))
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update TREATMENTS because DIAGNOSTIC_TEST exists.');
        END
 ;

CREATE TRIGGER tU_TREA3 AFTER UPDATE ON TREATMENTS
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_CLAIMANT_ROLE_ID =
CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update TREATMENTS because CLAIMANT_ROLE does not exist.');
        END
 ;

CREATE TRIGGER tU_TREA4 AFTER UPDATE ON TREATMENTS
     FOR EACH ROW MODE DB2SQL
    UPDATE TREATMENTS
      SET
        TREATMENTS.N_PROVIDER_ROLE_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INS_INVOLVEMENT
            WHERE
              new.N_PROVIDER_ROLE_ID = INS_INVOLVEMENT.N_INS_INVL_ID
        )
 ;


   

CREATE TABLE UNAVAILABILITY
(
        N_UNAVAIL_ID          CHAR(16) NOT NULL, 
        N_SUPPLIER_ID         CHAR(16) NOT NULL, 
        C_SUPP_TYPE           CHAR(5) NOT NULL, 
        C_REASON              CHAR(5) NOT NULL, 
        D_UNAVAIL_START       TIMESTAMP NOT NULL, 
        D_UNAVAIL_END         TIMESTAMP NOT NULL, 
        D_ASSIGN_START        TIMESTAMP NOT NULL, 
        D_ASSIGN_END          TIMESTAMP NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP44601 ON UNAVAILABILITY
(
        N_UNAVAIL_ID          ASC
);



CREATE INDEX XTP44603 ON UNAVAILABILITY
(
        N_SUPPLIER_ID         ASC, 
        C_SUPP_TYPE           ASC, 
        D_UNAVAIL_START       ASC, 
        D_UNAVAIL_END         ASC, 
        D_ASSIGN_START        ASC, 
        D_ASSIGN_END          ASC
);



ALTER TABLE UNAVAILABILITY
ADD CONSTRAINT XTP44601  PRIMARY KEY (N_UNAVAIL_ID);



ALTER TABLE UNAVAILABILITY
ADD CONSTRAINT RTP43705  FOREIGN KEY (N_SUPPLIER_ID)
                REFERENCES SUPPLIER  (N_SUPPLIER_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_UNAVA AFTER INSERT ON UNAVAILABILITY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE UNAVAILABILITY
      SET
        UNAVAILABILITY.N_SUPPLIER_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM SUPPLIER
            WHERE
              new.N_SUPPLIER_ID = SUPPLIER.N_SUPPLIER_ID
        )
 ;


   

CREATE TABLE USECASE_ACG
(
        USERID                VARCHAR(20) NOT NULL, 
        USECASEGROUPID        VARCHAR(30) NOT NULL
);



CREATE INDEX XTP01102 ON USECASE_ACG
(
        USERID                ASC, 
        USECASEGROUPID        ASC
);



   

CREATE TABLE USER_PREFERENCE
(
        N_USER_PREFERNC_ID    CHAR(16) NOT NULL DEFAULT '', 
        N_ORG_ENTY_ID         CHAR(16) NOT NULL DEFAULT '', 
        T_UI_NAME             VARCHAR(32) NOT NULL DEFAULT '', 
        T_UI_LABEL            VARCHAR(32) NOT NULL DEFAULT '', 
        T_USER_PREF_VALUE     VARCHAR(50) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP03101 ON USER_PREFERENCE
(
        N_USER_PREFERNC_ID    ASC, 
        N_ORG_ENTY_ID         ASC
);



ALTER TABLE USER_PREFERENCE
ADD CONSTRAINT XTP03101  PRIMARY KEY (N_USER_PREFERNC_ID, N_ORG_ENTY_ID);



ALTER TABLE USER_PREFERENCE
ADD CONSTRAINT RTP31338  FOREIGN KEY (N_ORG_ENTY_ID)
                REFERENCES ORG_ENTITY  (N_ORG_ENTY_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_USER_ AFTER INSERT ON USER_PREFERENCE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ORG_ENTITY WHERE new.N_ORG_ENTY_ID = ORG_ENTITY.N_ORG_ENTY_ID))

     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert USER_PREFERENCE because ORG_ENTITY does not
exist.');
        END
 ;


   

CREATE TABLE VEHICLE
(
        N_VEHICLE_ID          CHAR(16) NOT NULL, 
        N_VIN                 VARCHAR(25) NOT NULL DEFAULT '', 
        C_MAKE                CHAR(5) NOT NULL DEFAULT '', 
        M_MAKEMODEL           VARCHAR(50) NOT NULL DEFAULT '', 
        N_YEAR                INTEGER, 
        N_PLATE               CHAR(15) NOT NULL, 
        C_PLATE_STATE         CHAR(5) NOT NULL, 
        C_PLATE_COUNTRY       CHAR(5) NOT NULL, 
        C_OWNERSHIP           CHAR(5) NOT NULL, 
        T_ADDL_VEHICLE        VARCHAR(50) NOT NULL, 
        C_TYPE                CHAR(5) NOT NULL, 
        C_INSRD_IND           CHAR(1) NOT NULL, 
        C_REPAIR_IND          CHAR(1) NOT NULL, 
        C_DAMAGED_IND         CHAR(5) NOT NULL, 
        M_BODYTYPE            VARCHAR(30) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_REGISTERED_USER     CHAR(7) NOT NULL DEFAULT '', 
        N_MORTGAGEE1          CHAR(7) NOT NULL DEFAULT '', 
        N_MORTGAGEE2          CHAR(7) NOT NULL DEFAULT '', 
        N_OWNER               CHAR(7) NOT NULL DEFAULT '', 
        N_SECONDARY_USER      CHAR(7) NOT NULL DEFAULT '', 
        C_PRICE_LEVEL         CHAR(2) NOT NULL DEFAULT '', 
        A_VAT_PCT             DECIMAL(5, 2) DEFAULT NULL, 
        C_DRAWHOOK_IND        CHAR(1) NOT NULL DEFAULT '', 
        N_KM_MILEAGE          INTEGER, 
        D_KM_DATE_DT          TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        T_KM_INTERVAL         VARCHAR(20) NOT NULL DEFAULT '', 
        C_SECURITY_DEMANDS    CHAR(5) NOT NULL DEFAULT '', 
        C_OFF_COV_IND         CHAR(1) NOT NULL DEFAULT '', 
        C_ANTI_THEFT_PROTC    CHAR(5) NOT NULL DEFAULT '', 
        C_HAZARDOUS_GOODS     CHAR(5) NOT NULL DEFAULT '', 
        C_DRIVING_ABROAD      CHAR(5) NOT NULL DEFAULT '', 
        D_INFORCE_DATE        TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        D_EXPIRATION_DATE     TIMESTAMP NOT NULL DEFAULT '2999-12-31-00.00.00.000000', 
        C_COLOR               CHAR(15) NOT NULL DEFAULT '', 
        C_GUILT_CRASH_PART    CHAR(5) NOT NULL DEFAULT '', 
        C_GUILT_PCT           CHAR(5) NOT NULL DEFAULT '', 
        C_GUILT_PERCEPTION    CHAR(5) NOT NULL DEFAULT '', 
        N_INVL_PART_ID        CHAR(16) NOT NULL DEFAULT '', 
        N_INVL_INS_COMP_ID    CHAR(16) NOT NULL DEFAULT '', 
        C_COMMENTS            VARCHAR(254) NOT NULL DEFAULT '', 
        C_TOWAGE_SUBSCRIBE    CHAR(5) NOT NULL DEFAULT '', 
        C_KASKO_IND           CHAR(1) NOT NULL DEFAULT '', 
        C_DRIVER_RELATED      CHAR(5) NOT NULL DEFAULT '', 
        D_VEH_PURCHASE_DT     TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        C_TOTAL_DAMAGE_IND    CHAR(1) NOT NULL DEFAULT '', 
        C_KM_SOURCE           CHAR(5) NOT NULL DEFAULT '', 
        T_MAKE_AND_MODEL      VARCHAR(60) NOT NULL DEFAULT '', 
        T_MAKE                VARCHAR(30) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP38601 ON VEHICLE
(
        N_VEHICLE_ID          ASC
);



CREATE INDEX XTP38605 ON VEHICLE
(
        N_PLATE               ASC
);



CREATE INDEX XTP38603 ON VEHICLE
(
        N_INVL_PART_ID        ASC
);



ALTER TABLE VEHICLE
ADD CONSTRAINT XTP38601  PRIMARY KEY (N_VEHICLE_ID);



ALTER TABLE VEHICLE
ADD CONSTRAINT RTP29109  FOREIGN KEY (N_VEHICLE_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



ALTER TABLE VEHICLE
ADD CONSTRAINT R_406  FOREIGN KEY (N_INVL_INS_COMP_ID)
                REFERENCES INS_INVOLVEMENT  (N_INS_INVL_ID)
                ON DELETE RESTRICT;



ALTER TABLE DAMAGE_ZONE_SET
ADD CONSTRAINT RTP38601  FOREIGN KEY (N_VEHICLE_ID)
                REFERENCES VEHICLE  (N_VEHICLE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_VEHIC AFTER INSERT ON VEHICLE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE VEHICLE
      SET
        VEHICLE.N_INVL_INS_COMP_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INS_INVOLVEMENT
            WHERE
              new.N_INVL_INS_COMP_ID = INS_INVOLVEMENT.N_INS_INVL_ID
        )
 ;

CREATE TRIGGER tI_VEHI2 AFTER INSERT ON VEHICLE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE VEHICLE
      SET
        VEHICLE.N_INVL_PART_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM INS_INVOLVEMENT
            WHERE
              new.N_INVL_PART_ID = INS_INVOLVEMENT.N_INS_INVL_ID
        )
 ;

CREATE TRIGGER tI_VEHI3 AFTER INSERT ON VEHICLE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ITEM WHERE new.N_VEHICLE_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert VEHICLE because ITEM does not exist.');
        END
 ;

CREATE TRIGGER tD_VEHIC AFTER DELETE ON VEHICLE
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM DAMAGE_ZONE_SET WHERE DAMAGE_ZONE_SET.N_VEHICLE_ID =
old.N_VEHICLE_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete VEHICLE because DAMAGE_ZONE_SET exists.');
        END
 ;

CREATE TRIGGER tU_VEHIC AFTER UPDATE ON VEHICLE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM ITEM WHERE new.N_VEHICLE_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update VEHICLE because ITEM does not exist.');
        END
 ;


   

CREATE TABLE VEHICLE_DAMAGE
(
        N_VEH_DMG_ID          CHAR(16) NOT NULL, 
        N_ITEM_INVL_ID        CHAR(16) NOT NULL, 
        C_VEH_DMG_CAT         CHAR(5) NOT NULL, 
        C_VEH_DMG_CD          CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP38701 ON VEHICLE_DAMAGE
(
        N_VEH_DMG_ID          ASC
);



ALTER TABLE VEHICLE_DAMAGE
ADD CONSTRAINT XTP38701  PRIMARY KEY (N_VEH_DMG_ID);



ALTER TABLE VEHICLE_DAMAGE
ADD CONSTRAINT RTP29302  FOREIGN KEY (N_ITEM_INVL_ID)
                REFERENCES ITEM_INVOLVEMENT  (N_ITEM_INVL_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_VEHIC AFTER INSERT ON VEHICLE_DAMAGE
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ITEM_INVOLVEMENT WHERE new.N_ITEM_INVL_ID =
ITEM_INVOLVEMENT.N_ITEM_INVL_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert VEHICLE_DAMAGE because ITEM_INVOLVEMENT does not
exist.');
        END
 ;

CREATE TRIGGER tU_VEHIC AFTER UPDATE ON VEHICLE_DAMAGE
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM ITEM_INVOLVEMENT WHERE new.N_ITEM_INVL_ID =
ITEM_INVOLVEMENT.N_ITEM_INVL_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update VEHICLE_DAMAGE because ITEM_INVOLVEMENT does not
exist.');
        END
 ;


   

CREATE TABLE WC_CLMNT
(
        N_WC_CLMNT_ID         CHAR(16) NOT NULL, 
        N_CLAIM_ID            CHAR(16) NOT NULL, 
        C_RTW_IND             CHAR(1) NOT NULL, 
        C_SFTY_EQUIP_SPLD     CHAR(1) NOT NULL, 
        C_HORSEPLAY_IND       CHAR(1) NOT NULL, 
        C_SFTY_EQUIP_USD      CHAR(1) NOT NULL, 
        C_UNDRINFLNC_IND      CHAR(1) NOT NULL, 
        T_UNDRINFLNC_DESC     CHAR(100) NOT NULL, 
        C_DFCTV_MACH_IND      CHAR(1) NOT NULL, 
        T_DFCTV_MACH_DESC     CHAR(253) NOT NULL, 
        C_MACH_INV_IND        CHAR(1) NOT NULL, 
        M_MACH_NME            CHAR(30) NOT NULL, 
        M_MACH_PART_NAME      CHAR(30) NOT NULL, 
        M_OBJCT_INVLD_NAME    CHAR(30) NOT NULL, 
        T_EMP_ACT_DESC        CHAR(100) NOT NULL, 
        T_EMP_WRK_DESC        CHAR(100) NOT NULL, 
        T_EMP_PREV_DESC       CHAR(100) NOT NULL, 
        C_INTNL_ACT_IND       CHAR(1) NOT NULL, 
        T_LOSS_PREV_DESC      CHAR(100) NOT NULL, 
        T_SFTY_VLTN_DESC      CHAR(100) NOT NULL, 
        C_CONTRO_IND          CHAR(1) NOT NULL, 
        T_CONTRO_DESC         CHAR(100) NOT NULL, 
        M_REG_COUNTY          CHAR(30) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP38801 ON WC_CLMNT
(
        N_WC_CLMNT_ID         ASC
);



ALTER TABLE WC_CLMNT
ADD CONSTRAINT XTP38801  PRIMARY KEY (N_WC_CLMNT_ID);



ALTER TABLE WC_CLMNT
ADD CONSTRAINT RTP23209  FOREIGN KEY (N_WC_CLMNT_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



ALTER TABLE WC_CLMNT
ADD CONSTRAINT RTP22206  FOREIGN KEY (N_CLAIM_ID)
                REFERENCES CLAIM  (N_CLAIM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_WC_CL AFTER INSERT ON WC_CLMNT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
    UPDATE WC_CLMNT
      SET
        WC_CLMNT.N_CLAIM_ID = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CLAIM
            WHERE
              new.N_CLAIM_ID = CLAIM.N_CLAIM_ID
        )
 ;

CREATE TRIGGER tI_WC_C2 AFTER INSERT ON WC_CLMNT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_WC_CLMNT_ID =
CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert WC_CLMNT because CLAIMANT_ROLE does not exist.');
        END
 ;

CREATE TRIGGER tU_WC_CL AFTER UPDATE ON WC_CLMNT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_WC_CLMNT_ID =
CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update WC_CLMNT because CLAIMANT_ROLE does not exist.');
        END
 ;


   

CREATE TABLE WC_LOSS
(
        N_WC_LOSS_ID          CHAR(16) NOT NULL, 
        C_LOSS_COV            CHAR(5) NOT NULL, 
        D_EMPLR_NOTIFY        TIMESTAMP NOT NULL, 
        N_EMP_INJURED         INTEGER, 
        C_WC_LOSS_TYP         CHAR(5) NOT NULL, 
        C_FED_ACT_RPT         CHAR(5) NOT NULL, 
        C_EMP_CAUSE_ACCD      CHAR(3) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        C_STATE_LOSS_COV      CHAR(5) NOT NULL
);



CREATE UNIQUE INDEX XTP38901 ON WC_LOSS
(
        N_WC_LOSS_ID          ASC
);



ALTER TABLE WC_LOSS
ADD CONSTRAINT XTP38901  PRIMARY KEY (N_WC_LOSS_ID);



ALTER TABLE WC_LOSS
ADD CONSTRAINT RTP30802  FOREIGN KEY (N_WC_LOSS_ID)
                REFERENCES LOSS  (N_LOSS_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_WC_LO AFTER INSERT ON WC_LOSS
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM LOSS WHERE new.N_WC_LOSS_ID = LOSS.N_LOSS_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert WC_LOSS because LOSS does not exist.');
        END
 ;

CREATE TRIGGER tU_WC_LO AFTER UPDATE ON WC_LOSS
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM LOSS WHERE new.N_WC_LOSS_ID = LOSS.N_LOSS_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update WC_LOSS because LOSS does not exist.');
        END
 ;


   

CREATE TABLE WORK_RESTRICTION
(
        N_WORK_RSTRCTN_ID     CHAR(16) NOT NULL, 
        N_CLAIMANT_ROLE_ID    CHAR(16) NOT NULL, 
        C_TYP_CODE            CHAR(5) NOT NULL, 
        C_STAT_C              CHAR(5) NOT NULL, 
        Q_MEASURE             INTEGER, 
        C_MEASURE_CODE        CHAR(5) NOT NULL, 
        C_FREQ_CODE           CHAR(5) NOT NULL, 
        C_JOB_MATCH_IND       CHAR(1) NOT NULL, 
        D_FROM_DT             TIMESTAMP NOT NULL, 
        T_DESC                CHAR(254) NOT NULL, 
        D_TO_DT               TIMESTAMP NOT NULL, 
        C_ACTIVE_IND          CHAR(1) NOT NULL, 
        N_LAST_MAN_DEPT_ID    CHAR(4) NOT NULL, 
        N_LAST_WORKDEPT_ID    CHAR(5) NOT NULL, 
        N_CREATED_OE          CHAR(16) NOT NULL, 
        N_CREATED_DEPT        CHAR(4) NOT NULL, 
        N_CREATED_WORKDEPT    CHAR(5) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP39001 ON WORK_RESTRICTION
(
        N_WORK_RSTRCTN_ID     ASC
);



ALTER TABLE WORK_RESTRICTION
ADD CONSTRAINT XTP39001  PRIMARY KEY (N_WORK_RSTRCTN_ID);



ALTER TABLE WORK_RESTRICTION
ADD CONSTRAINT RTP23210  FOREIGN KEY (N_CLAIMANT_ROLE_ID)
                REFERENCES CLAIMANT_ROLE  (N_CLAIMANT_ROLE_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_WORK_ AFTER INSERT ON WORK_RESTRICTION
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_CLAIMANT_ROLE_ID =
CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert WORK_RESTRICTION because CLAIMANT_ROLE does not
exist.');
        END
 ;

CREATE TRIGGER tU_WORK_ AFTER UPDATE ON WORK_RESTRICTION
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM CLAIMANT_ROLE WHERE new.N_CLAIMANT_ROLE_ID =
CLAIMANT_ROLE.N_CLAIMANT_ROLE_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update WORK_RESTRICTION because CLAIMANT_ROLE does not
exist.');
        END
 ;


   

CREATE TABLE WORKER_INJRY_HIST2
(
        N_WORK_INJ_HST2_ID    CHAR(16) NOT NULL, 
        N_WORKER_INJURY_ID    CHAR(16) NOT NULL, 
        C_INJRY_CLAIM_TYPE    CHAR(1) NOT NULL DEFAULT '', 
        C_END_CODE            CHAR(2) NOT NULL DEFAULT '', 
        D_END_CODE_DT         TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        D_FIRST_ASK_DT        TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP68501 ON WORKER_INJRY_HIST2
(
        N_WORK_INJ_HST2_ID    ASC
);



ALTER TABLE WORKER_INJRY_HIST2
ADD CONSTRAINT XTP68501  PRIMARY KEY (N_WORK_INJ_HST2_ID);



ALTER TABLE WORKER_INJRY_HIST2
ADD CONSTRAINT RTP68501  FOREIGN KEY (N_WORKER_INJURY_ID)
                REFERENCES WORKERS_INJURY  (N_WORKER_INJURY_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_WORKE AFTER INSERT ON WORKER_INJRY_HIST2
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM WORKERS_INJURY WHERE new.N_WORKER_INJURY_ID =
WORKERS_INJURY.N_WORKER_INJURY_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert WORKER_INJRY_HIST2 because WORKERS_INJURY does not
exist.');
        END
 ;


   

CREATE TABLE WORKER_INJURY_HIST
(
        N_WORK_INJ_HIST_ID    CHAR(16) NOT NULL, 
        N_WORKER_INJURY_ID    CHAR(16) NOT NULL, 
        C_CLAIM_REOPEN_RSN    CHAR(5) NOT NULL DEFAULT '', 
        D_CLAIM_REOPEN_DT     TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL
);



CREATE UNIQUE INDEX XTP64301 ON WORKER_INJURY_HIST
(
        N_WORK_INJ_HIST_ID    ASC
);



ALTER TABLE WORKER_INJURY_HIST
ADD CONSTRAINT XTP64301  PRIMARY KEY (N_WORK_INJ_HIST_ID);



ALTER TABLE WORKER_INJURY_HIST
ADD CONSTRAINT RTP64201  FOREIGN KEY (N_WORKER_INJURY_ID)
                REFERENCES WORKERS_INJURY  (N_WORKER_INJURY_ID)
                ON DELETE RESTRICT;



ALTER TABLE INJURY_COMP
ADD CONSTRAINT RTP64301  FOREIGN KEY (N_WORK_INJ_HIST_ID)
                REFERENCES WORKER_INJURY_HIST  (N_WORK_INJ_HIST_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_WORKE AFTER INSERT ON WORKER_INJURY_HIST
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM WORKERS_INJURY WHERE new.N_WORKER_INJURY_ID =
WORKERS_INJURY.N_WORKER_INJURY_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert WORKER_INJURY_HIST because WORKERS_INJURY does not
exist.');
        END
 ;

CREATE TRIGGER tD_WORKE AFTER DELETE ON WORKER_INJURY_HIST
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM INJURY_COMP WHERE INJURY_COMP.N_WORK_INJ_HIST_ID =
old.N_WORK_INJ_HIST_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete WORKER_INJURY_HIST because INJURY_COMP exists.');
        END
 ;


   

CREATE TABLE WORKERS_INJURY
(
        N_WORKER_INJURY_ID    CHAR(16) NOT NULL, 
        C_EMPLOYMENT_GRP      CHAR(5) NOT NULL DEFAULT '', 
        C_EMPLOYMENT_TYPE     CHAR(6) NOT NULL DEFAULT '', 
        C_MAIN_EMPLOYM_IND    CHAR(1) NOT NULL DEFAULT '', 
        C_JOBTYPE             CHAR(6) NOT NULL DEFAULT '', 
        C_STATUS_CODE         CHAR(5) NOT NULL DEFAULT '', 
        C_CLAIM_TREATED       CHAR(5) NOT NULL, 
        C_RESERVATION         CHAR(5) NOT NULL DEFAULT '', 
        C_DIAGNOSIS           CHAR(5) NOT NULL DEFAULT '', 
        C_DIAGNOSIS_DUE_TO    CHAR(5) NOT NULL DEFAULT '', 
        C_NTF_DEADLINE_IND    CHAR(1) NOT NULL DEFAULT '', 
        C_CLAIM_GHEA_TYPE     CHAR(5) NOT NULL DEFAULT '', 
        C_ASK_DECISION        CHAR(5) NOT NULL DEFAULT '', 
        C_APPEALED_BY         CHAR(5) NOT NULL DEFAULT '', 
        C_WHAT_IS_APPEALED    CHAR(5) NOT NULL DEFAULT '', 
        D_APPEALED_DT         TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        C_ANKE_DECISION       CHAR(5) NOT NULL DEFAULT '', 
        D_ANKE_DECISION_DT    TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL, 
        N_EASY_NUMBER         CHAR(6) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP64201 ON WORKERS_INJURY
(
        N_WORKER_INJURY_ID    ASC
);



ALTER TABLE WORKERS_INJURY
ADD CONSTRAINT XTP64201  PRIMARY KEY (N_WORKER_INJURY_ID);



ALTER TABLE WORKERS_INJURY
ADD CONSTRAINT RTP23301  FOREIGN KEY (N_WORKER_INJURY_ID)
                REFERENCES INJURY2  (N_INJURY2_ID)
                ON DELETE RESTRICT;



ALTER TABLE WORKER_INJURY_HIST
ADD CONSTRAINT RTP64201  FOREIGN KEY (N_WORKER_INJURY_ID)
                REFERENCES WORKERS_INJURY  (N_WORKER_INJURY_ID)
                ON DELETE RESTRICT;



ALTER TABLE WORKER_INJRY_HIST2
ADD CONSTRAINT RTP68501  FOREIGN KEY (N_WORKER_INJURY_ID)
                REFERENCES WORKERS_INJURY  (N_WORKER_INJURY_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_WORKE AFTER INSERT ON WORKERS_INJURY
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INJURY2 WHERE new.N_WORKER_INJURY_ID = INJURY2.N_INJURY2_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert WORKERS_INJURY because INJURY2 does not exist.');
        END
 ;

CREATE TRIGGER tD_WORKE AFTER DELETE ON WORKERS_INJURY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM WORKER_INJRY_HIST2 WHERE WORKER_INJRY_HIST2.N_WORKER_INJURY_ID =
old.N_WORKER_INJURY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete WORKERS_INJURY because WORKER_INJRY_HIST2 exists.');
        END
 ;

CREATE TRIGGER tD_WORK2 AFTER DELETE ON WORKERS_INJURY
   REFERENCING OLD AS OLD FOR EACH ROW MODE DB2SQL
   WHEN (0 < (SELECT count(*) FROM WORKER_INJURY_HIST WHERE WORKER_INJURY_HIST.N_WORKER_INJURY_ID =
old.N_WORKER_INJURY_ID))
        BEGIN ATOMIC
     SIGNAL SQLSTATE '75001' ('Cannot delete WORKERS_INJURY because WORKER_INJURY_HIST exists.');
        END
 ;


   

CREATE TABLE WORKERS_LOSS_COMP
(
        N_WORK_LOSS_CMP_ID    CHAR(16) NOT NULL DEFAULT '', 
        C_REGULATION_CODE     CHAR(5) NOT NULL DEFAULT '', 
        F_CAPITALIZE_PCT      DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        F_PREV_CAP_PCT        DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        F_LOP_PCT             DECIMAL(5, 2) NOT NULL DEFAULT 0, 
        C_PENSION_IND         CHAR(5) NOT NULL DEFAULT 'NA', 
        C_SPORTS_IND          CHAR(5) NOT NULL DEFAULT 'NA', 
        C_SPORTS_EXP_AGE      CHAR(5) NOT NULL DEFAULT '', 
        N_ALLOWANCE_ID        CHAR(16) NOT NULL DEFAULT '', 
        N_REM_MTURITY_MNTH    INTEGER NOT NULL DEFAULT 0, 
        A_BASE_SALARY_AMT     DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_BASE_SALARY_UOM     CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_PREV_BS_DED_AMT     DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_PREV_BS_DED_UOM     CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_BASE_AMT            DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_BASE_UOM            CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_REG_BASE_AMT        DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_REG_BASE_UOM        CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_ANNUAL_GROSS_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_ANNUAL_GROSS_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_ADJ_AN_GROSS_AMT    DECIMAL(19, 6), 
        C_ADJ_AN_GROSS_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_ADJ_CAP_AMT         DECIMAL(19, 6), 
        C_ADJ_CAP_UOM         CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_DEF_SALARY_AMT      DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_DEF_SALARY_UOM      CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_NEW_BASE_AMT        DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_NEW_BASE_UOM        CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_BS_SAL_DEDUC_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_BS_SAL_DEDUC_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_BASE_DEDUCT_AMT     DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_BASE_DEDUCT_UOM     CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_REG_BS_DEDUC_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_REG_BS_DEDUC_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        C_DEFERRED_IND        CHAR(5) NOT NULL DEFAULT 'NA', 
        N_NUM_OF_CHILDREN     INTEGER NOT NULL DEFAULT 0, 
        N_REPLACEMENT_YEAR    INTEGER NOT NULL DEFAULT 0, 
        A_REG_NEW_BASE_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_REG_NEW_BASE_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_DEF_AN_GROSS_AMT    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_DEF_AN_GROSS_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        F_CAP_FACTOR          DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL DEFAULT '', 
        N_SYSTEM_MOD          CHAR(8) NOT NULL DEFAULT '', 
        C_RCD_DEL             CHAR(1) NOT NULL DEFAULT '', 
        N_LAST_UPDT           INTEGER NOT NULL, 
        A_ADJ_BASE_AMT        DECIMAL(19, 6), 
        C_ADJ_BASE_UOM        CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_ADJ_REG_BASE_AMT    DECIMAL(19, 6), 
        C_ADJ_REG_BASE_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        D_RESERVE_START_DT    TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        A_DEF_BASE_AMT        DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_DEF_BASE_UOM        CHAR(5) NOT NULL DEFAULT 'DKK', 
        F_RESERVE_FACTOR      DECIMAL(19, 6), 
        A_EST_RECURR_AMT      DECIMAL(19, 6), 
        C_EST_RECURR_UOM      CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_DEF_BS_SAL_AMT      DECIMAL(19, 6), 
        C_DEF_BS_SAL_UOM      CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_REG_DEF_BS_AMT      DECIMAL(19, 6), 
        C_REG_DEF_BS_UOM      CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_COMP_REGULAR_AMT    DECIMAL(19, 6), 
        C_COMP_REGULAR_UOM    CHAR(5) NOT NULL DEFAULT 'DKK', 
        A_COMP_DEFER_AMT      DECIMAL(19, 6), 
        C_COMP_DEFER_UOM      CHAR(5) NOT NULL DEFAULT 'DKK', 
        C_HAS_TMP_AVE_TIME    CHAR(1) NOT NULL DEFAULT 'N', 
        F_DEF_RES_FACTOR      DECIMAL(19, 6), 
        D_RECUR_REG_DT        TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000', 
        D_CAP_REG_DT          TIMESTAMP NOT NULL DEFAULT '1800-01-01-00.00.00.000000'
);



CREATE UNIQUE INDEX XTP64701 ON WORKERS_LOSS_COMP
(
        N_WORK_LOSS_CMP_ID    ASC
);



ALTER TABLE WORKERS_LOSS_COMP
ADD CONSTRAINT XTP64701  PRIMARY KEY (N_WORK_LOSS_CMP_ID);



ALTER TABLE WORKERS_LOSS_COMP
ADD CONSTRAINT RTP45310  FOREIGN KEY (N_WORK_LOSS_CMP_ID)
                REFERENCES INJURY_COMP  (N_INJURY_COMP_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_WORKE AFTER INSERT ON WORKERS_LOSS_COMP
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM INJURY_COMP WHERE new.N_WORK_LOSS_CMP_ID =
INJURY_COMP.N_INJURY_COMP_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert WORKERS_LOSS_COMP because INJURY_COMP does not
exist.');
        END
 ;


   

CREATE TABLE YACHT
(
        N_YACHT_ID            CHAR(16) NOT NULL, 
        M_YACHT               CHAR(30) NOT NULL, 
        N_LENGTH              DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        N_HIN                 CHAR(20) NOT NULL, 
        M_MAKEMODEL           CHAR(30) NOT NULL, 
        C_TYPE                CHAR(5) NOT NULL, 
        D_MANUFACTURED        TIMESTAMP NOT NULL, 
        C_OWNERSHIP           CHAR(5) NOT NULL, 
        T_ADDL_PROPERTY       CHAR(50) NOT NULL, 
        T_NAVGL_LIMITS        CHAR(50) NOT NULL, 
        T_CHTR_RESTRICTION    CHAR(50) NOT NULL, 
        D_CREATE_TS           TIMESTAMP NOT NULL, 
        D_LAST_UPDT_TS        TIMESTAMP NOT NULL, 
        N_LAST_MOD            CHAR(16) NOT NULL, 
        N_SYSTEM_MOD          CHAR(8) NOT NULL, 
        C_RCD_DEL             CHAR(1) NOT NULL, 
        N_LAST_UPDT           INTEGER NOT NULL, 
        M_CONTACT_NAME        CHAR(80) NOT NULL, 
        T_CONTACT_PHONE       CHAR(30) NOT NULL, 
        C_YACHT_TYPE_KT       CHAR(10) NOT NULL DEFAULT '', 
        N_CONST_YEAR          INTEGER NOT NULL DEFAULT 1800, 
        C_CONST_MANNER_KT     CHAR(5) NOT NULL DEFAULT '', 
        C_CONST_MATERIA_KT    CHAR(5) NOT NULL DEFAULT '', 
        C_HARBOUR_NAME_KT     CHAR(5) NOT NULL DEFAULT '', 
        C_HARBOUR_CAT_KT      CHAR(5) NOT NULL DEFAULT '', 
        Q_WIDTH               DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        Q_DRAUGHT_CM          DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        Q_WEIGHT              DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_WINTHER_SAIL_KT     CHAR(5) NOT NULL DEFAULT '', 
        C_WINTHER_LIE_KT      CHAR(5) NOT NULL DEFAULT '', 
        A_YCHT_MOTOR_I_SUM    DECIMAL(19, 6) NOT NULL DEFAULT 0, 
        C_YCHT_MOTOR_I_UOM    CHAR(5) NOT NULL DEFAULT '', 
        C_TAX_INCLUDED_KT     CHAR(5) NOT NULL DEFAULT '', 
        N_MORTGAGEE1          CHAR(7) NOT NULL DEFAULT '', 
        N_MORTGAGEE2          CHAR(7) NOT NULL DEFAULT ''
);



CREATE UNIQUE INDEX XTP39101 ON YACHT
(
        N_YACHT_ID            ASC
);



ALTER TABLE YACHT
ADD CONSTRAINT XTP39101  PRIMARY KEY (N_YACHT_ID);



ALTER TABLE YACHT
ADD CONSTRAINT RTP29110  FOREIGN KEY (N_YACHT_ID)
                REFERENCES ITEM  (N_ITEM_ID)
                ON DELETE RESTRICT;



CREATE TRIGGER tI_YACHT AFTER INSERT ON YACHT
   REFERENCING NEW AS NEW FOR EACH ROW MODE DB2SQL
   WHEN ((0 = (SELECT count(*) FROM ITEM WHERE new.N_YACHT_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot insert YACHT because ITEM does not exist.');
        END
 ;

CREATE TRIGGER tU_YACHT AFTER UPDATE ON YACHT
     FOR EACH ROW MODE DB2SQL
   WHEN (0 = ((SELECT count(*) FROM ITEM WHERE new.N_YACHT_ID = ITEM.N_ITEM_ID))
     )
        BEGIN ATOMIC
       SIGNAL SQLSTATE '75001' ('Cannot update YACHT because ITEM does not exist.');
        END
 ;