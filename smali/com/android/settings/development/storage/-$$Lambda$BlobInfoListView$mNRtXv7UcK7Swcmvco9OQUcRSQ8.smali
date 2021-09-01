.class public final synthetic Lcom/android/settings/development/storage/-$$Lambda$BlobInfoListView$mNRtXv7UcK7Swcmvco9OQUcRSQ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/development/storage/BlobInfoListView;

.field public final synthetic f$1:Landroid/app/blob/BlobInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/development/storage/BlobInfoListView;Landroid/app/blob/BlobInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/storage/-$$Lambda$BlobInfoListView$mNRtXv7UcK7Swcmvco9OQUcRSQ8;->f$0:Lcom/android/settings/development/storage/BlobInfoListView;

    iput-object p2, p0, Lcom/android/settings/development/storage/-$$Lambda$BlobInfoListView$mNRtXv7UcK7Swcmvco9OQUcRSQ8;->f$1:Landroid/app/blob/BlobInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/storage/-$$Lambda$BlobInfoListView$mNRtXv7UcK7Swcmvco9OQUcRSQ8;->f$0:Lcom/android/settings/development/storage/BlobInfoListView;

    iget-object p0, p0, Lcom/android/settings/development/storage/-$$Lambda$BlobInfoListView$mNRtXv7UcK7Swcmvco9OQUcRSQ8;->f$1:Landroid/app/blob/BlobInfo;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/development/storage/BlobInfoListView;->lambda$getDialogOnClickListener$0$BlobInfoListView(Landroid/app/blob/BlobInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method
