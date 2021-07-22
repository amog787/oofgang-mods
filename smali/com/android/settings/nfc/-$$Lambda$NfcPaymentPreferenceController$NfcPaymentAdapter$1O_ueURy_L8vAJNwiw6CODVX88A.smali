.class public final synthetic Lcom/android/settings/nfc/-$$Lambda$NfcPaymentPreferenceController$NfcPaymentAdapter$1O_ueURy_L8vAJNwiw6CODVX88A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;

.field public final synthetic f$1:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/nfc/-$$Lambda$NfcPaymentPreferenceController$NfcPaymentAdapter$1O_ueURy_L8vAJNwiw6CODVX88A;->f$0:Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;

    iput-object p2, p0, Lcom/android/settings/nfc/-$$Lambda$NfcPaymentPreferenceController$NfcPaymentAdapter$1O_ueURy_L8vAJNwiw6CODVX88A;->f$1:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/-$$Lambda$NfcPaymentPreferenceController$NfcPaymentAdapter$1O_ueURy_L8vAJNwiw6CODVX88A;->f$0:Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;

    iget-object p0, p0, Lcom/android/settings/nfc/-$$Lambda$NfcPaymentPreferenceController$NfcPaymentAdapter$1O_ueURy_L8vAJNwiw6CODVX88A;->f$1:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->lambda$getView$0$NfcPaymentPreferenceController$NfcPaymentAdapter(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View;)V

    return-void
.end method
