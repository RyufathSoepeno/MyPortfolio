.class public final synthetic Lio/flutter/embedding/engine/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/flutter/embedding/engine/f;->a:J

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 6

    iget-wide v0, p0, Lio/flutter/embedding/engine/f;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->a(JLandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method
