.class Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$1;
.super Ljava/lang/Object;
.source "FaceEnrollEnrolling.java"

# interfaces
.implements Lcom/android/settings/biometrics/face/ParticleCollection$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrolled()V
    .locals 1

    .line 56
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;

    invoke-static {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->access$000(Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->access$100(Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;[B)V

    return-void
.end method
