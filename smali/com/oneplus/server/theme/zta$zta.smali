.class Lcom/oneplus/server/theme/zta$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/theme/zta;->bvj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/server/theme/zta;


# direct methods
.method constructor <init>(Lcom/oneplus/server/theme/zta;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/theme/zta$zta;->zta:Lcom/oneplus/server/theme/zta;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const-string p0, "OnePlusThemeController"

    const-string p1, "This is default"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/oneplus/server/theme/zta;->zta(Z)Z

    :goto_0
    return-void
.end method
