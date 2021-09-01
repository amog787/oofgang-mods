.class Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$1;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;)V
    .locals 0

    .line 1119
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1122
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->access$1300(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;)Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1123
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->access$1300(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;)Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-interface {p1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;->onDeleteClick(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;)V

    :cond_0
    return-void
.end method
