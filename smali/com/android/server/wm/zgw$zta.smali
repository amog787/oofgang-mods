.class Lcom/android/server/wm/zgw$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/zgw;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/zgw;


# direct methods
.method constructor <init>(Lcom/android/server/wm/zgw;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/zgw$zta;->zta:Lcom/android/server/wm/zgw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/zgw$zta;->zta:Lcom/android/server/wm/zgw;

    invoke-virtual {p0}, Lcom/android/server/wm/zgw;->oif()V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
