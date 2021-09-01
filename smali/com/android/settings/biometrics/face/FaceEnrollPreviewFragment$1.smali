.class Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$1;
.super Ljava/lang/Object;
.source "FaceEnrollPreviewFragment.java"

# interfaces
.implements Lcom/android/settings/biometrics/face/ParticleCollection$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrolled()V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$000(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/biometrics/face/ParticleCollection$Listener;->onEnrolled()V

    return-void
.end method
