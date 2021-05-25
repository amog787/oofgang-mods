.class public final synthetic Lcom/android/server/wm/gck;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zta:Lcom/android/server/wm/OpWindowManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/OpWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/gck;->zta:Lcom/android/server/wm/OpWindowManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gck;->zta:Lcom/android/server/wm/OpWindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/OpWindowManagerService;->sis()V

    return-void
.end method
