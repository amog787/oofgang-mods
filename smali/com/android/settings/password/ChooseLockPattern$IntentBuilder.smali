.class public Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockPattern;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string p1, "extra_require_password"

    const/4 v1, 0x0

    .line 115
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v0, "confirm_credentials"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string p1, "has_challenge"

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setChallenge(J)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "has_challenge"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "challenge"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object p0
.end method

.method public setForFace(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "for_face"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setForFingerprint(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "for_fingerprint"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setPattern(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "unification_profile_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v0, "unification_profile_credential"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setUserId(I)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method
