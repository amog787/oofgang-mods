.class public abstract Lcom/android/settings/applications/InstalledAppLister;
.super Lcom/android/settings/applications/AppLister;
.source "InstalledAppLister.java"


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/os/UserManager;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/AppLister;-><init>(Landroid/content/pm/PackageManager;Landroid/os/UserManager;)V

    return-void
.end method


# virtual methods
.method protected includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    .line 31
    iget-object p0, p0, Lcom/android/settings/applications/AppLister;->mPm:Landroid/content/pm/PackageManager;

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/android/settings/applications/InstalledAppCounter;->includeInCount(ILandroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method
