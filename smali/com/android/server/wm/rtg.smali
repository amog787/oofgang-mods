.class public final synthetic Lcom/android/server/wm/rtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic zta:Lcom/android/server/wm/OnePlusPerfManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/OnePlusPerfManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/rtg;->zta:Lcom/android/server/wm/OnePlusPerfManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/rtg;->zta:Lcom/android/server/wm/OnePlusPerfManager;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->tsu(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
