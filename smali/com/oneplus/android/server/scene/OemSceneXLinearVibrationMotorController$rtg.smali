.class public Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$rtg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "rtg"
.end annotation


# instance fields
.field final sis:I

.field final you:I

.field final zta:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$rtg;->zta:Ljava/lang/String;

    iput p2, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$rtg;->you:I

    iput p3, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$rtg;->sis:I

    return-void
.end method


# virtual methods
.method public sis()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$rtg;->zta:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$rtg;->zta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", awinic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$rtg;->you:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$rtg;->sis:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public you()I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$rtg;->sis:I

    return p0
.end method

.method public zta()I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$rtg;->you:I

    return p0
.end method
