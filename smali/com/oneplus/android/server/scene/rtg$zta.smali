.class Lcom/oneplus/android/server/scene/rtg$zta;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/rtg;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/rtg;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/rtg$zta;->zta:Lcom/oneplus/android/server/scene/rtg;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/rtg$zta;->zta:Lcom/oneplus/android/server/scene/rtg;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/scene/rtg;->zta(I)V

    return-void
.end method
