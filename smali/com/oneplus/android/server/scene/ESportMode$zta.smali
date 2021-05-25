.class Lcom/oneplus/android/server/scene/ESportMode$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/ESportMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/ESportMode;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/ESportMode;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ESportMode$zta;->zta:Lcom/oneplus/android/server/scene/ESportMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ESportMode"

    const-string v1, "Try to recover phone crash caused telephony esport invoking error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ESportMode$zta;->zta:Lcom/oneplus/android/server/scene/ESportMode;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/ESportMode;->access$200(Lcom/oneplus/android/server/scene/ESportMode;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/oneplus/android/server/scene/ESportMode;->access$300(Lcom/oneplus/android/server/scene/ESportMode;Z)V

    return-void
.end method
