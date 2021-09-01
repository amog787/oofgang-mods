.class Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;
.super Ljava/lang/Object;
.source "DevelopmentTilePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnChangeHandler"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p1, "statusbar"

    .line 94
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 93
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 99
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 100
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 108
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 110
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0, v0}, Lcom/android/internal/statusbar/IStatusBarService;->addTile(Landroid/content/ComponentName;)V

    goto :goto_1

    .line 112
    :cond_1
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0, v0}, Lcom/android/internal/statusbar/IStatusBarService;->remTile(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to modify QS tile for component "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DevTilePrefController"

    .line 116
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return v1
.end method
