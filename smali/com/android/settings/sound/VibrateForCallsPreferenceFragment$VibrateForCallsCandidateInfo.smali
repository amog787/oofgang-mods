.class Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "VibrateForCallsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VibrateForCallsCandidateInfo"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mLabelId:I

.field final synthetic this$0:Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;Ljava/lang/String;I)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;->this$0:Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;

    const/4 p1, 0x1

    .line 147
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    .line 148
    iput-object p2, p0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;->mKey:Ljava/lang/String;

    .line 149
    iput p3, p0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;->mLabelId:I

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;->this$0:Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;->mLabelId:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
