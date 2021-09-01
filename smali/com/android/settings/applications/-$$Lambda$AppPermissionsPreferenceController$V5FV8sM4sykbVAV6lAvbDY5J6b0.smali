.class public final synthetic Lcom/android/settings/applications/-$$Lambda$AppPermissionsPreferenceController$V5FV8sM4sykbVAV6lAvbDY5J6b0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/applications/-$$Lambda$AppPermissionsPreferenceController$V5FV8sM4sykbVAV6lAvbDY5J6b0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/-$$Lambda$AppPermissionsPreferenceController$V5FV8sM4sykbVAV6lAvbDY5J6b0;

    invoke-direct {v0}, Lcom/android/settings/applications/-$$Lambda$AppPermissionsPreferenceController$V5FV8sM4sykbVAV6lAvbDY5J6b0;-><init>()V

    sput-object v0, Lcom/android/settings/applications/-$$Lambda$AppPermissionsPreferenceController$V5FV8sM4sykbVAV6lAvbDY5J6b0;->INSTANCE:Lcom/android/settings/applications/-$$Lambda$AppPermissionsPreferenceController$V5FV8sM4sykbVAV6lAvbDY5J6b0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-static {p1}, Lcom/android/settings/applications/AppPermissionsPreferenceController;->lambda$queryPermissionSummary$0(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0
.end method
