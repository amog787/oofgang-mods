.class Lcom/oneplus/settings/OPOnlineConfigManager$SLABackgroundConfigUpdater;
.super Ljava/lang/Object;
.source "OPOnlineConfigManager.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPOnlineConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SLABackgroundConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPOnlineConfigManager;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPOnlineConfigManager;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/oneplus/settings/OPOnlineConfigManager$SLABackgroundConfigUpdater;->this$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2

    const-string v0, "OPOnlineConfigManager"

    const-string v1, "SLABackgroundConfigUpdater"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object p0, p0, Lcom/oneplus/settings/OPOnlineConfigManager$SLABackgroundConfigUpdater;->this$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-static {p0, p1}, Lcom/oneplus/settings/OPOnlineConfigManager;->access$200(Lcom/oneplus/settings/OPOnlineConfigManager;Lorg/json/JSONArray;)V

    return-void
.end method
