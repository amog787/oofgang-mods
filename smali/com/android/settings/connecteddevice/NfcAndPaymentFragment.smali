.class public Lcom/android/settings/connecteddevice/NfcAndPaymentFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NfcAndPaymentFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->nfc_and_payment_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/connecteddevice/NfcAndPaymentFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 52
    sget p0, Lcom/android/settings/R$string;->help_uri_nfc_and_payment_settings:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NfcAndPaymentFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x724

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 37
    sget p0, Lcom/android/settings/R$xml;->nfc_and_payment_settings:I

    return p0
.end method
