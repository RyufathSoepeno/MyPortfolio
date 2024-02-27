.class public final synthetic Lf0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lf0/c;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I

.field public final synthetic h:Lf0/c$f;

.field public final synthetic i:Ljava/nio/ByteBuffer;

.field public final synthetic j:J


# direct methods
.method public synthetic constructor <init>(Lf0/c;Ljava/lang/String;ILf0/c$f;Ljava/nio/ByteBuffer;J)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/b;->e:Lf0/c;

    iput-object p2, p0, Lf0/b;->f:Ljava/lang/String;

    iput p3, p0, Lf0/b;->g:I

    iput-object p4, p0, Lf0/b;->h:Lf0/c$f;

    iput-object p5, p0, Lf0/b;->i:Ljava/nio/ByteBuffer;

    iput-wide p6, p0, Lf0/b;->j:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lf0/b;->e:Lf0/c;

    iget-object v1, p0, Lf0/b;->f:Ljava/lang/String;

    iget v2, p0, Lf0/b;->g:I

    iget-object v3, p0, Lf0/b;->h:Lf0/c$f;

    iget-object v4, p0, Lf0/b;->i:Ljava/nio/ByteBuffer;

    iget-wide v5, p0, Lf0/b;->j:J

    invoke-static/range {v0 .. v6}, Lf0/c;->h(Lf0/c;Ljava/lang/String;ILf0/c$f;Ljava/nio/ByteBuffer;J)V

    return-void
.end method
