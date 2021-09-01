.class Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "VibrationPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/VibrationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VibrationIntensityCandidateInfo"
.end annotation


# instance fields
.field private mIntensity:I

.field private mKey:Ljava/lang/String;

.field private mLabelId:I

.field final synthetic this$0:Lcom/android/settings/accessibility/VibrationPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->this$0:Lcom/android/settings/accessibility/VibrationPreferenceFragment;

    const/4 p1, 0x1

    .line 253
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    .line 254
    iput-object p2, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->mKey:Ljava/lang/String;

    .line 255
    iput p3, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->mLabelId:I

    .line 256
    iput p4, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->mIntensity:I

    return-void
.end method


# virtual methods
.method public getIntensity()I
    .locals 0

    .line 275
    iget p0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->mIntensity:I

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->this$0:Lcom/android/settings/accessibility/VibrationPreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->mLabelId:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
