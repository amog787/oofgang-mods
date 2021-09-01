.class Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$BugreportHandlerAppInfo;
.super Lcom/android/settingslib/applications/DefaultAppInfo;
.source "BugReportHandlerPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BugreportHandlerAppInfo"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 205
    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;Ljava/lang/String;Z)V

    .line 206
    iput-object p1, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$BugreportHandlerAppInfo;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/settingslib/applications/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/settingslib/applications/DefaultAppInfo;->userId:I

    invoke-static {v0, p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$BugreportHandlerAppInfo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/applications/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.shell"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object p0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$BugreportHandlerAppInfo;->mContext:Landroid/content/Context;

    const v0, 0x104010f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 226
    :cond_1
    invoke-super {p0}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
