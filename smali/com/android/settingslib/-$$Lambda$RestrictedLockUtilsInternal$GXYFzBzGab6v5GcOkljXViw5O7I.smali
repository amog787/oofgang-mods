.class public final synthetic Lcom/android/settingslib/-$$Lambda$RestrictedLockUtilsInternal$GXYFzBzGab6v5GcOkljXViw5O7I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settingslib/RestrictedLockUtilsInternal$LockSettingCheck;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settingslib/-$$Lambda$RestrictedLockUtilsInternal$GXYFzBzGab6v5GcOkljXViw5O7I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/-$$Lambda$RestrictedLockUtilsInternal$GXYFzBzGab6v5GcOkljXViw5O7I;

    invoke-direct {v0}, Lcom/android/settingslib/-$$Lambda$RestrictedLockUtilsInternal$GXYFzBzGab6v5GcOkljXViw5O7I;-><init>()V

    sput-object v0, Lcom/android/settingslib/-$$Lambda$RestrictedLockUtilsInternal$GXYFzBzGab6v5GcOkljXViw5O7I;->INSTANCE:Lcom/android/settingslib/-$$Lambda$RestrictedLockUtilsInternal$GXYFzBzGab6v5GcOkljXViw5O7I;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnforcing(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->lambda$checkIfMaximumTimeToLockIsSet$2(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method
