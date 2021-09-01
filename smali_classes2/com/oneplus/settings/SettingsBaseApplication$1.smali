.class Lcom/oneplus/settings/SettingsBaseApplication$1;
.super Ljava/lang/Object;
.source "SettingsBaseApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/SettingsBaseApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/SettingsBaseApplication;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/SettingsBaseApplication;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/oneplus/settings/SettingsBaseApplication$1;->this$0:Lcom/oneplus/settings/SettingsBaseApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/oneplus/settings/SettingsBaseApplication$1;->this$0:Lcom/oneplus/settings/SettingsBaseApplication;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {p0, v0}, Lcom/oneplus/settings/SettingsBaseApplication;->access$000(Lcom/oneplus/settings/SettingsBaseApplication;Landroid/content/Context;)V

    return-void
.end method
