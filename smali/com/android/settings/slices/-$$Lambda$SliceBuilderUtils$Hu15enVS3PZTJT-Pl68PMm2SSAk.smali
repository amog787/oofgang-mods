.class public final synthetic Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$Hu15enVS3PZTJT-Pl68PMm2SSAk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$Hu15enVS3PZTJT-Pl68PMm2SSAk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$Hu15enVS3PZTJT-Pl68PMm2SSAk;

    invoke-direct {v0}, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$Hu15enVS3PZTJT-Pl68PMm2SSAk;-><init>()V

    sput-object v0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$Hu15enVS3PZTJT-Pl68PMm2SSAk;->INSTANCE:Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$Hu15enVS3PZTJT-Pl68PMm2SSAk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->lambda$buildSliceKeywords$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
