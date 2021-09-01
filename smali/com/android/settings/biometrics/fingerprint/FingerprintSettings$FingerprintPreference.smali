.class public Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;
    }
.end annotation


# instance fields
.field private mDeleteView:Landroid/view/View;

.field private mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private final mOnDeleteClickListener:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;)V
    .locals 0

    .line 1092
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    .line 1093
    sget p1, Lcom/android/settings/R$layout;->op_preference_two_target:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 1094
    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->mOnDeleteClickListener:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;)Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;
    .locals 0

    .line 1079
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->mOnDeleteClickListener:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;

    return-object p0
.end method


# virtual methods
.method public getFingerprint()Landroid/hardware/fingerprint/Fingerprint;
    .locals 0

    .line 1106
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object p0
.end method

.method protected getSecondTargetResId()I
    .locals 0

    .line 1111
    sget p0, Lcom/android/settings/R$layout;->preference_widget_delete:I

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 1098
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->mView:Landroid/view/View;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 1116
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 1117
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->mView:Landroid/view/View;

    .line 1118
    sget v0, Lcom/android/settings/R$id;->delete_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->mDeleteView:Landroid/view/View;

    .line 1119
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    .line 1102
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method
