.class Lcom/android/server/wm/OpScreenModeService$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpScreenModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "tsu"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/OpScreenModeService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpScreenModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2

    const-string v0, "ScreenModeService"

    const-string v1, "updateConfig ScreenMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->access$100(Lcom/android/server/wm/OpScreenModeService;Lorg/json/JSONArray;)V

    return-void
.end method
