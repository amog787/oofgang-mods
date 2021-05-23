.class public Lcom/android/server/wm/ear/zta;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final bio:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final cno:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final gck:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final igw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final kth:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final rtg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sis:Ljava/lang/String; = "com.tencent.mm"

.field public static final ssp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final tsu:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final wtn:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final you:Ljava/lang/String; = "net.oneplus.launcher"

.field public static final zta:I = 0x96


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "com.tencent.mm/.plugin.base.stub.WXShortcutEntryActivity"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ear/zta;->tsu:Ljava/util/Set;

    const-string v0, "com.tencent.mm"

    const-string v1, "com.UCMobile"

    const-string v2, "com.ucmobile.lite"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v3

    sput-object v3, Lcom/android/server/wm/ear/zta;->rtg:Ljava/util/Set;

    const-string v3, "com.tencent.mtt"

    const-string v4, "com.heytap.browser"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ear/zta;->ssp:Ljava/util/Set;

    const-string v0, "Splash Screen com.tencent.mm"

    const-string v4, "com.tencent.mm/com.tencent.mm.app.WeChatSplashActivity"

    const-string v5, "Splash Screen com.tencent.mtt"

    const-string v6, "com.tencent.mtt/com.tencent.mtt.MainActivity"

    filled-new-array {v0, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v4

    sput-object v4, Lcom/android/server/wm/ear/zta;->cno:Ljava/util/Set;

    const-string v4, "com.tencent.tmgp.sgame"

    const-string v6, "com.tencent.qqlive"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v4

    sput-object v4, Lcom/android/server/wm/ear/zta;->kth:Ljava/util/Set;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    sput-object v4, Lcom/android/server/wm/ear/zta;->bio:Landroid/util/ArrayMap;

    const-string v6, "com.tencent.mm/.app.WeChatSplashActivity"

    const-string v7, "com.tencent.mm/.ui.LauncherUI"

    invoke-virtual {v4, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/wm/ear/zta;->bio:Landroid/util/ArrayMap;

    const-string v6, "com.UCMobile/com.uc.browser.InnerUCMobile"

    const-string v8, "com.UCMobile/.main.UCMobile"

    invoke-virtual {v4, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/wm/ear/zta;->bio:Landroid/util/ArrayMap;

    const-string v6, "com.ucmobile.lite/com.uc.browser.InnerUCMobile"

    const-string v9, "com.ucmobile.lite/com.UCMobile.main.UCMobile"

    invoke-virtual {v4, v6, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/wm/ear/zta;->bio:Landroid/util/ArrayMap;

    const-string v6, "com.tencent.mtt/.MainActivity"

    const-string v10, "com.tencent.mtt/.SplashActivity"

    invoke-virtual {v4, v6, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/server/wm/ear/zta;->igw:Ljava/util/Map;

    const-wide/16 v11, 0x96

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/wm/ear/zta;->igw:Ljava/util/Map;

    invoke-interface {v3, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wm/ear/zta;->igw:Ljava/util/Map;

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/android/server/wm/ear/zta;->wtn:Landroid/util/ArrayMap;

    const v2, 0x507027b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wm/ear/zta;->wtn:Landroid/util/ArrayMap;

    const v2, 0x507027d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wm/ear/zta;->wtn:Landroid/util/ArrayMap;

    const v2, 0x507027e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wm/ear/zta;->wtn:Landroid/util/ArrayMap;

    const v2, 0x507027c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/android/server/wm/ear/zta;->gck:Landroid/util/ArrayMap;

    const-string v2, "com.tencent.mm/com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wm/ear/zta;->gck:Landroid/util/ArrayMap;

    const-string v1, "com.tencent.mtt/com.tencent.mtt.SplashActivity"

    invoke-virtual {v0, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
