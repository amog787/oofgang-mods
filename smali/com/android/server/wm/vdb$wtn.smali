.class Lcom/android/server/wm/vdb$wtn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/vdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "wtn"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/vdb;


# direct methods
.method constructor <init>(Lcom/android/server/wm/vdb;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/vdb$wtn;->zta:Lcom/android/server/wm/vdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/vdb$wtn;->zta:Lcom/android/server/wm/vdb;

    invoke-static {p0, p1}, Lcom/android/server/wm/vdb;->ugm(Lcom/android/server/wm/vdb;Lorg/json/JSONArray;)V

    return-void
.end method
