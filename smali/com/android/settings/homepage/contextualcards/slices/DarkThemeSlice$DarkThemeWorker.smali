.class public Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$DarkThemeWorker;
.super Lcom/android/settings/slices/SliceBackgroundWorker;
.source "DarkThemeSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DarkThemeWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/slices/SliceBackgroundWorker<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 188
    new-instance p2, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$DarkThemeWorker$1;

    new-instance v0, Landroid/os/Handler;

    .line 189
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, v0}, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$DarkThemeWorker$1;-><init>(Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$DarkThemeWorker;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$DarkThemeWorker;->mContentObserver:Landroid/database/ContentObserver;

    .line 200
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$DarkThemeWorker;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$DarkThemeWorker;)Landroid/content/Context;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$DarkThemeWorker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$DarkThemeWorker;)V
    .locals 0

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method protected onSlicePinned()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$DarkThemeWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power"

    .line 206
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$DarkThemeWorker;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 205
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onSliceUnpinned()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$DarkThemeWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$DarkThemeWorker;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
