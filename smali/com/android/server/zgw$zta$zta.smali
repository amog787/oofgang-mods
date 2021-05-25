.class Lcom/android/server/zgw$zta$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/zgw$zta;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/zgw$zta;


# direct methods
.method constructor <init>(Lcom/android/server/zgw$zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/zgw$zta$zta;->zta:Lcom/android/server/zgw$zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/zgw$zta$zta;->zta:Lcom/android/server/zgw$zta;

    iget-object v0, p0, Lcom/android/server/zgw$zta;->ssp:Landroid/os/DropBoxManager;

    iget-object p0, p0, Lcom/android/server/zgw$zta;->zta:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "overheat"

    invoke-virtual {v0, v1, p0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
