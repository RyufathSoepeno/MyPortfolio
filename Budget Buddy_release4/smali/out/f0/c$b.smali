.class Lf0/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field b:I

.field c:J


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;IJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/c$b;->a:Ljava/nio/ByteBuffer;

    iput p2, p0, Lf0/c$b;->b:I

    iput-wide p3, p0, Lf0/c$b;->c:J

    return-void
.end method
