.class public final synthetic Landroid/view/inputmethod/InputContentInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method


# virtual methods
.method public native synthetic getContentUri()Landroid/net/Uri;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic getDescription()Landroid/content/ClipDescription;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic releasePermission()V
.end method

.method public native synthetic requestPermission()V
.end method
