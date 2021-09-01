.class Lcom/android/settingslib/applications/ApplicationsState$23;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 1

    .line 2149
    monitor-enter p1

    .line 2150
    :try_start_0
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2151
    invoke-interface {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2152
    invoke-interface {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2153
    invoke-interface {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PHOTOS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2154
    invoke-interface {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    .line 2155
    :goto_1
    monitor-exit p1

    xor-int/2addr p0, v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public init()V
    .locals 0

    return-void
.end method
