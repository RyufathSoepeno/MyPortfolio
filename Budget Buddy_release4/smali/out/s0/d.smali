.class public Ls0/d;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ls0/d;->e:Ljava/lang/String;

    iput-object p3, p0, Ls0/d;->f:Ljava/lang/Object;

    return-void
.end method
