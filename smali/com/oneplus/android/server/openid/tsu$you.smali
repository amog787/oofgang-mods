.class Lcom/oneplus/android/server/openid/tsu$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/openid/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/openid/tsu;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/openid/tsu;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/openid/tsu$you;->zta:Lcom/oneplus/android/server/openid/tsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2

    const-string v0, "OpenIdManager"

    const-string v1, "Receive online config update."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/openid/tsu$you;->zta:Lcom/oneplus/android/server/openid/tsu;

    invoke-static {p0, p1}, Lcom/oneplus/android/server/openid/tsu;->zta(Lcom/oneplus/android/server/openid/tsu;Lorg/json/JSONArray;)V

    return-void
.end method
