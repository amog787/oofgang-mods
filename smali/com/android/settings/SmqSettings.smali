.class public Lcom/android/settings/SmqSettings;
.super Ljava/lang/Object;
.source "SmqSettings.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSmqPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/settings/SmqSettings;->mContext:Landroid/content/Context;

    .line 54
    new-instance p1, Lcom/android/settings/DBReadAsyncTask;

    iget-object v0, p0, Lcom/android/settings/SmqSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/DBReadAsyncTask;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    iget-object p1, p0, Lcom/android/settings/SmqSettings;->mContext:Landroid/content/Context;

    const-string v1, "smqpreferences"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SmqSettings;->mSmqPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public isShowSmqSettings()Z
    .locals 2

    .line 60
    iget-object p0, p0, Lcom/android/settings/SmqSettings;->mSmqPreferences:Landroid/content/SharedPreferences;

    const-string v0, "app_status"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
