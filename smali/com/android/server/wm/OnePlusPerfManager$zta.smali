.class Lcom/android/server/wm/OnePlusPerfManager$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/OnePlusPerfManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OnePlusPerfManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager$zta;->zta:Lcom/android/server/wm/OnePlusPerfManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager$zta;->zta:Lcom/android/server/wm/OnePlusPerfManager;

    const-string v1, "updateConfig"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$zta;->zta:Lcom/android/server/wm/OnePlusPerfManager;

    invoke-static {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->access$800(Lcom/android/server/wm/OnePlusPerfManager;Lorg/json/JSONArray;)V

    return-void
.end method
