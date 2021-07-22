.class Lcom/android/settings/biometrics/face/ParticleCollection$1;
.super Ljava/lang/Object;
.source "ParticleCollection.java"

# interfaces
.implements Lcom/android/settings/biometrics/face/AnimationParticle$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/ParticleCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/face/ParticleCollection;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/ParticleCollection;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/settings/biometrics/face/ParticleCollection$1;->this$0:Lcom/android/settings/biometrics/face/ParticleCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingCompleted(I)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/android/settings/biometrics/face/ParticleCollection$1;->this$0:Lcom/android/settings/biometrics/face/ParticleCollection;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/ParticleCollection;->access$000(Lcom/android/settings/biometrics/face/ParticleCollection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/android/settings/biometrics/face/ParticleCollection$1;->this$0:Lcom/android/settings/biometrics/face/ParticleCollection;

    invoke-static {v2}, Lcom/android/settings/biometrics/face/ParticleCollection;->access$000(Lcom/android/settings/biometrics/face/ParticleCollection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/android/settings/biometrics/face/ParticleCollection$1;->this$0:Lcom/android/settings/biometrics/face/ParticleCollection;

    invoke-static {v2}, Lcom/android/settings/biometrics/face/ParticleCollection;->access$000(Lcom/android/settings/biometrics/face/ParticleCollection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/android/settings/biometrics/face/ParticleCollection$1;->this$0:Lcom/android/settings/biometrics/face/ParticleCollection;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/ParticleCollection;->access$000(Lcom/android/settings/biometrics/face/ParticleCollection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/settings/biometrics/face/ParticleCollection$1;->this$0:Lcom/android/settings/biometrics/face/ParticleCollection;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/ParticleCollection;->access$000(Lcom/android/settings/biometrics/face/ParticleCollection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 70
    iget-object p0, p0, Lcom/android/settings/biometrics/face/ParticleCollection$1;->this$0:Lcom/android/settings/biometrics/face/ParticleCollection;

    invoke-static {p0}, Lcom/android/settings/biometrics/face/ParticleCollection;->access$100(Lcom/android/settings/biometrics/face/ParticleCollection;)Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/biometrics/face/ParticleCollection$Listener;->onEnrolled()V

    :cond_2
    return-void
.end method
