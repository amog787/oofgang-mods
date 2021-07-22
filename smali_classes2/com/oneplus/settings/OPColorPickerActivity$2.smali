.class Lcom/oneplus/settings/OPColorPickerActivity$2;
.super Ljava/lang/Object;
.source "OPColorPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPColorPickerActivity;->sendTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPColorPickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPColorPickerActivity;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$400(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPApplicationUtils;->killProcess(Landroid/app/ActivityManager;Z)V

    .line 492
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "oneplus_accentcolor"

    const-string v2, ""

    .line 494
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1, v0}, Lcom/oneplus/compat/util/OpThemeNative;->enableTheme(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 496
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    .line 497
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentShape(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentShapeByIndex(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    const-string v1, "oneplus_shape"

    .line 496
    invoke-static {v1, v0, p0}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
