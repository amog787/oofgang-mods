.class Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask$1;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Lcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;)V
    .locals 0

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut(Lcom/oneplus/settings/ui/OPProgressDialog;)V
    .locals 0

    const-string p0, "UpdateRuleTask"

    const-string p1, "UpdateRuleTask onTimeOut"

    .line 741
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
