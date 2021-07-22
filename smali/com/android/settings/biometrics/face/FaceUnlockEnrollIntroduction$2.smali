.class Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction$2;
.super Ljava/lang/Object;
.source "FaceUnlockEnrollIntroduction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction$2;->this$0:Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 242
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "op_legal_notices_type"

    const/16 v1, 0xa

    .line 243
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "key_from_settings"

    const/4 v1, 0x1

    .line 244
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction$2;->this$0:Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
