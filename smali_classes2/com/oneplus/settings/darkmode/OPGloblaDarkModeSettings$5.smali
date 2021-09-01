.class Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$5;
.super Ljava/lang/Object;
.source "OPGloblaDarkModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$5;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 306
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 307
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$5;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "op_dark_mode_tips_already_show"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
